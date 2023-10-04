package xlog

type XOption interface {
	apply(x *XLog)
}

type XOptionFunc func(x *XLog)

func (xf XOptionFunc) apply(x *XLog) {
	xf(x)
}

func SetLevel(level XLevel) XOption {
	return XOptionFunc(func(x *XLog) {
		x.level = level
	})
}
func SetCodeDetail(t bool) XOption {
	return XOptionFunc(func(x *XLog) {
		if t {
			x.formatFlag |= XLogDetail
		} else {
			x.formatFlag &= ^XLogDetail
		}
	})
}

func SetLogDate(date XLogFormat) XOption {
	return XOptionFunc(func(x *XLog) {
		x.formatFlag |= date
	})
}

func SetLogTime(time XLogFormat) XOption {
	return XOptionFunc(func(x *XLog) {
		x.formatFlag |= time
	})
}
