package xlog

import writerCore "xlog/pkg/log/WriterCore"

type XLog struct {
	level       XLevel
	formatFlag  XLogFormat
	WriterCores []*writerCore.WriterCore
}

type XLogFormat uint8

const (
	XLogDetail XLogFormat = 1 << iota
	XLogDate
	XLogTime
)

func NewXLog(opts ...XOption) *XLog {
	x := &XLog{
		level:      TraceLevel,
		formatFlag: XLogDate | XLogTime,
	}

	if len(opts) > 0 {
		for _, opt := range opts {
			opt.apply(x)
		}
	}

	return x
}

func (xl *XLog) AddWriterCore(wc *writerCore.WriterCore) {
	// maybe need to use a struct to store wc
	xl.WriterCores = append(xl.WriterCores, wc)
}
