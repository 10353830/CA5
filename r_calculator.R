#Derek Baker 10353830

#Add Function
add <- function(x, y) {
  return(x + y)
}
#Subtract Function
subtract <- function(x, y) {
  return(x - y)
}
#Multiply Function
multiply <- function(x, y) {
  return(x * y)
}
#Divide Function
divide <- function(x, y) {
  return(x / y)
}
#Exponential Function
exp <- function(x, y) {
  return(x ** y)
}
#Square Function
square <-function(x) {
  return (x*x)
}
#Show Menu
print("Make Selection for calculation")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Exponential")
print("6.Square")
# Get user input
Sel = as.integer(readline(prompt="Enter your selection: "))
num1 = as.numeric(readline(prompt="Enter number for calculation: "))
if (choice <6 ){
  num2 = as.numeric(readline(prompt="Enter second number: "))
}
operator <- switch(sel,"+","-","*","/","to Exponent of","The Square of")
result <- switch(sel, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), exp(num1, num2),square(num1))
if (choice <6){
  print(paste(num1, operator, num2, "=", result))
} else print(paste( operator, num1, "=", result))