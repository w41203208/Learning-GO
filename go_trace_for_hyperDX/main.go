package main

import (
	"io"
	"log"
	"net/http"
	"os"
	"strings"

	"github.com/hyperdxio/hyperdx-go"
	"github.com/hyperdxio/zapz"
	"github.com/joho/godotenv"
	"go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp"
	"go.uber.org/zap"
)

func main() {
	err := godotenv.Load(".env")
	// Initialize otel tracing for server
	hyperdx.InitTracer()

	log.Println(os.Getenv("OTEL_EXPORTER_OTLP_HEADERS"))
	// Initialize zapz logger and use it across the entire app
	logger, err := zapz.New(strings.Split(os.Getenv("OTEL_EXPORTER_OTLP_HEADERS"), "=")[1])
	if err != nil {
		panic(err)
	}
	defer logger.Sync()

	logger.Warn("hello world", zap.String("foo", "bar"))

	http.Handle("/", otelhttp.NewHandler(wrapHandler(logger, ExampleHandler), "example-service"))

	port := os.Getenv("PORT")
	if port == "" {
		port = "7777"
	}

	logger.Info("** Service Started on Port " + port + " **")
	if err := http.ListenAndServe(":"+port, nil); err != nil {
		logger.Fatal(err.Error())
	}
}

// Wrap all handlers using this function to include trace metadata in the logger
func wrapHandler(logger *zap.Logger, handler http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		logger := zapz.WithTraceMetadata(r.Context(), logger)
		logger.Info("request received", zap.String("path", r.URL.Path), zap.String("method", r.Method))
		handler(w, r)
		logger.Info("request completed", zap.String("path", r.URL.Path), zap.String("method", r.Method))
	}
}

func ExampleHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Add("Content-Type", "application/json")
	io.WriteString(w, `{"status":"ok"}`)
}
