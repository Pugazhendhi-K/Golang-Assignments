package main 

  

import "fmt"

  
func main() { 

    var value int 
    fmt.Println("Enter your choice to choose language: ")
    fmt.Scanln(&value)
   switch { 

       case value == 1: 

       fmt.Println("Tamizh") 

       case value == 2: 

       fmt.Println("Hindi") 

       case value == 3: 

       fmt.Println("English") 

       default:  

       fmt.Println("Invalid") 

   } 

  
}
