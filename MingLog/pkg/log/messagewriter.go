package xlog

import writerCore "xlog/pkg/log/WriterCore"

type MessageWriter struct {
	message     *XMessage
	writerCores []writerCore.WriterCore
	enc         *XEncoder
}

func (me *MessageWriter) AddWriterCore(core writerCore.WriterCore) {
	me.writerCores = append(me.writerCores, core)
}

func (me *MessageWriter) Write() {
	buf := me.enc.Encode(me.message)
	// add ErrorReceiver
	for _, core := range me.writerCores {
		core.Write(buf)
	}
}
