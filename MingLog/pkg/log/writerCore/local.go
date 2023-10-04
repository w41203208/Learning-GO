package writerCore

import "io"

type LocalWriter struct {
	w io.Writer
}

func (lw *LocalWriter) Write(p []byte) {
	lw.write(p)
}

func (lw *LocalWriter) write(p []byte) {

}
