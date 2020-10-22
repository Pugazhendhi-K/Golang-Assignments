 package main
import (
	"fmt"
	"strconv"
	)
func main() {
	var a int = 70 
	fmt.Println(a)
	var b int = 18
	fmt.Printf("%v, %T\n", b, b)
	c := 20.6 
	fmt.Printf("%v, %T\n", c, c)
	var e float64
	e = float64(a)
	fmt.Printf("%v, %T\n", e, e)
	f = strconv.Itoa(b)
	fmt.Printf("%v, %T\n", f, f)
}
