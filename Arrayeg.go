ggpackage main 

  

import "fmt"

  
func main() { 
 

var myarr[3] string

  
myarr[0] = "A1"

myarr[1] = "A2"

myarr[2] = "A3"


fmt.Println("Elements of Array:") 

fmt.Println("Element 1: ", myarr[0]) 

fmt.Println("Element 2: ", myarr[1]) 

fmt.Println("Element 3: ", myarr[2]) 

//Second Type

arr:= [4] string{ "a1", "a2", "a3"} 

  

fmt.Println("Elements of the array:") 
  
for i:= 0; i < 3; i++{ 
fmt.Println(arr[i]) 
} 

} 
