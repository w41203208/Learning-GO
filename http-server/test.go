type CalHandler interface {
	CalMath()
}
type CalHandlerFunc func(int)

func (cf CalHandlerFunc) CalMath(x int, next) {
	cf(x)
}

type CalMiddleware struct {
	handler CalHandler
	next    *CalMiddleware
}

func (cm *CalMiddleware) CalMath(x int) {
	cm.handler.CalMath(x, next)
}



type MManager struct {
	ms []CalHandlerFunc
}

func (mm *MManager) Use(handler CalHandlerFunc) {
	mm.ms = append(mm.ms, handler)
}

// func configureMiddleware(fn func(CalHandlerFunc, CalHandlerFunc) CalHandlerFunc, ms ...CalMiddleware) CalHandlerFunc {
// 	for _, m := range ms {

// 	}
// }
func configureMiddleware(m1 CalMiddleware, m2 CalMiddleware) CalMiddleware {
	return CalMiddleware(func(next CalHandlerFunc) CalHandlerFunc {
		return m1(m2(next))
	})
}
	finalMiddle := configureMiddleware(Add1Middleware, Add2Middleware)
	hi := finalMiddle(CalHandlerFunc(func(x int) {
		fmt.Println(x)
	}))
	hi(1)