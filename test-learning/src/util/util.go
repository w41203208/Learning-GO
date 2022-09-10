package util

func ExchangePtr(a, b *int) {
	t := *a
	*a = *b
	*b = t
}

func Ui64toB(u uint64) []byte {
	r := make([]byte, 8)
	for i := 0; i < 8; i++ {
		// 將 u 做 8*i 的位元右移 然後與 0b11111111 做 and 運算
		// 將這個運算縮小8倍
		// STEP1：0b01010101 & 0b00000011 = 0b00000001 -> r[0] = 1, 
		// STEP2：0b01010101 & 0b00001100 = 0b00000100 -> r[i] = 4,
		r[i] = byte((u >> (i * 8)) & 0xff)
	}
	return r
}
func BtoUi64(val []byte) uint64 {
	r := uint64(0)
	for i := uint64(0); i < 8; i++ {
		// 移動val的每一個byte 8*i位元左移 然後再做 or 運算 
		// STEP1：0b00000000 | 0b00001000 = 0b00001000, 
		// STEP2：0b00001000 | 0b20000000 = 0b20001000
		r |= uint64(val[i]) << (8 * i)
	}
	return r
}

func NormalStringtoB(str string) []byte {
	b := []byte(str)
	return b
}