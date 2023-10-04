package xlog

import (
	"os"
	writerCore "xlog/pkg/log/WriterCore"
	"xlog/pkg/log/level"
)

type XEncoder struct {
}

func (enc *XEncoder) Encode(msg *XMessage) []byte {
	buf := []byte(msg.Level.String())

	buf = append(buf, msg.Body...)

	return buf
}

type XLog struct {
	level       level.XLevel
	formatFlag  XLogFormat
	WriterCores []writerCore.WriterCore
	enc         *XEncoder

	messageWriterPool *MessageWriterPool
}

type XLogFormat uint8

const (
	XLogDetail XLogFormat = 1 << iota
	XLogDate
	XLogTime
)

func NewXLog(opts ...XOption) *XLog {
	xEnc := &XEncoder{}

	x := &XLog{
		enc:        xEnc,
		level:      level.TraceLevel,
		formatFlag: XLogDate | XLogTime,

		//test
		messageWriterPool: NewMessageWriterPool(func() *MessageWriter {
			return &MessageWriter{
				enc: xEnc,
			}
		}),
	}
	// log.Println(x.level);

	if len(opts) > 0 {
		for _, opt := range opts {
			opt.apply(x)
		}
	}

	x.AddWriterCore(writerCore.NewLocalWriter(os.Stderr))

	return x
}

func (xl *XLog) AddWriterCore(wc writerCore.WriterCore) {
	// maybe need to use a struct to store wc
	xl.WriterCores = append(xl.WriterCores, wc)
}

func (xl *XLog) LogTrace(msg string, Fields ...interface{}) {
	if ent := xl.logCheck(level.TraceLevel, msg); ent != nil {
		ent.Write()
	}
}

func (xl *XLog) logCheck(level level.XLevel, msg string) *MessageWriter {
	if xl.level > level {
		return nil
	}

	m := NewMessage(xl.level, msg)

	// add other attribute for message

	// maybe need to use sync.Pool to store entry
	mWriter := &MessageWriter{
		enc:     xl.enc,
		message: m,
	}

	//
	if len(xl.WriterCores) > 0 {
		for _, core := range xl.WriterCores {
			if core.Check(m.Level) {
				mWriter.AddWriterCore(core)
			}
		}
	}

	return mWriter
}
