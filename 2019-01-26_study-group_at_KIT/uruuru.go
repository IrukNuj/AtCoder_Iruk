package _019_01_26_study_group_at_KIT

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)

	if a % 4 == 0 && a % 100 != 0 {
		fmt.Printf("Yes")
	}else if a % 400 == 0 {
		fmt.Printf("Yes")
	}else {
		fmt.Printf("No")
	}
}