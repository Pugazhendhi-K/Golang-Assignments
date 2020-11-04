package main
import (
	"fmt"
	"github.com/gin-gonic/gin")
func main() {
	fmt.Println("A Golang Programming Module");
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Welcome to Golang Programming",})
	})
	r.Run()
}
