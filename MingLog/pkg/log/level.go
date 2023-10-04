package xlog

type XLevel int8

const (
	InfoLevel XLevel = iota
	TraceLevel
	WarnLevel
	ErrorLevel
)

func (xlevel XLevel) String() string {
	switch xlevel {
	case InfoLevel:
		return "info"
	case TraceLevel:
		return "trace"
	case WarnLevel:
		return "warn"
	case ErrorLevel:
		return "error"
	default:
		return ""
	}
}
