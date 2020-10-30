package main
import "fmt"
func BubbleSort(numbers []int) []int {
   
   for i := len(numbers); i > 0; i-- {
      
      for j := 1; j < i; j++ {
         if numbers[j-1] > numbers[j] {
            intermediate := numbers[j]
            numbers[j] = numbers[j-1]
            numbers[j-1] = intermediate
                        }
             }
      }
   return numbers
 }
func main() {
    a := []int{2, 212, 3001, 14, 501, 7800, 9932, 33, 45, 45, 45, 91, 99, 37, 102, 102, 104, 106, 109, 106}
    fmt.Println(BubbleSort(a))
}
