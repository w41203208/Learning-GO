package main

import "fmt"

func main() {
	strs := []string{"ab", "a", ""}

	fmt.Println(longestCommonPrefix(strs))

}

func longestCommonPrefix(strs []string) string {
	length := len(strs)

	ans := strs[0]

	for i := 1; i < length; i++ {
		var j int
		if len(strs[i]) > len(ans) {
			j = len(ans)
		}else{
			j = len(strs[i])
		}
		ok := 0
		if(j == 0){
			return ""
		}
		for ok < j {
			if ans[ok] == strs[i][ok] {
				ok++
				if(ok == j){
					ans = ans[:ok]
				}
			} else {
				ans = ans[:ok]
				ok = j
			}
		}
	}
	return ans





	// min := 0
	// for i := 0; i < length; i++ {
	// 	if(min > len(strs[i])){
	// 		min = len(strs[i])
	// 	}
	// }

	// max_s := ""
	// for min > 0 {
	// 	if(strs[])

	// 	min--
	// }
}