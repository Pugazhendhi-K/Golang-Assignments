package main

import {"fmt"}

func main() {
	marks := map[string]int{
		"Ajay": 90,
		"Vijay": 88,
		"Jay": 56,
	}
	fmt.Println(marks)
	fmt.Println(marks["Ajay"]) 
	marks["Suriya"] = 100      
	fmt.Println(marks)
	fmt.Println("Total no.of.candidates",len(marks))
	delete(marks, "Jay") 
	pop, ok := marks["Jay"] 
	fmt.Println(pop, ok)
	fmt.Println(marks)
	
}
