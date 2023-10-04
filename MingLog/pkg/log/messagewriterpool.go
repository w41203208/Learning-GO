package xlog

import "sync"

type MessageWriterPool struct {
	pool sync.Pool
}

func NewMessageWriterPool(newFn func() *MessageWriter) *MessageWriterPool {
	msgWPool := &MessageWriterPool{
		pool: sync.Pool{
			New: func() interface{} {
				return newFn()
			},
		},
	}
	return msgWPool
}

func (pl *MessageWriterPool) Get() *MessageWriter {
	return pl.pool.Get().(*MessageWriter)
}

func (pl *MessageWriterPool) Put(x *MessageWriter) {
	pl.pool.Put(x)
}
