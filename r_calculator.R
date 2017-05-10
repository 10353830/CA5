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
  if (num2 == 0)
    return("Cannot divide by zero")
  else
    return(x / y)
}
#Power Function
power <- function(x, y) {
  return(x^y)
}
#Square Function
sqrt <-function(x) {
  return (x*x)
}
#Exponential Function
exp <- function(x, y) {
  return(x ** y)
}

#Show Menu
print("Make Selection for calculation")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Power")
print("6.Exponential")
print("7.Square Root")
# Get user input
Selection = as.integer(readline(prompt="Enter your selection: "))
num1 = as.numeric(readline(prompt="Enter number for calculation: "))
if (Selection <7 ) {
  num2 = as.numeric(readline(prompt="Enter second number: "))
}
operator <- switch(Selection,"+","-","*","/","to Exponent of","The Square of")
result <- switch(Selection, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2),power(num1, num2), exp(num1, num2),sqrt(num1))
if (Selection <7){
  print(paste(num1, operator, num2, "=", result))
} else print(paste( operator, num1, "=", result))