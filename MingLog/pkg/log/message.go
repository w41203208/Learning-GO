package xlog

import (
	"time"
	"xlog/pkg/log/level"
)

type XMessage struct {
	Body  string
	Level level.XLevel
}

func (m *XMessage) formatHeader(t time.Time, file string, line int) {

}

func NewMessage(lvl level.XLevel, msg string) *XMessage {
	return &XMessage{
		Level: lvl,
		Body:  msg,
	}
}
