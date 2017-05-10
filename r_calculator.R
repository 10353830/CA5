#Derek Baker 10353830

#Do calculations
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
sqrts <-function(x) {
  return (sqrt(x))
}

#Exponential Function
exp <- function(x, y) {
  return(x ** y)
}
#Sine Function
sine <- function(x) {
  return(sin(x))
}
#Cos Function
coS <- function(x) {
  return(cos(x))
}
#Tan Function
taN <- function(x) {
  return(tan(x))
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
print("8.Sin")
print("9.Cos")
print("10.Tan")

loop <- TRUE
while(loop){
  # Get user input
  selection = as.integer(readline(prompt="Enter your selection: "))
  if (selection < 0 || selection > 10){
    print("You have made an invalid selection")
    break()
  }
  num1 = as.numeric(readline(prompt="Enter number for calculation: "))
  if (Selection <=6 ) {
    num2 = as.numeric(readline(prompt="Enter second number: "))
  }
  #Get output
  operator <- switch(Selection,"Plus","Minus","Multiplied by","Divided by","To the Power of", "to Exponent of","The Square Root of","Sin of","Cos of","Tan of")
  result <- switch(Selection, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2)
                   ,power(num1, num2), exp(num1, num2), sqrts(num1), sine(num1), coS(num1), taN(num1))
  if (Selection <=6){
    print(paste(num1, operator, num2, "=", result))
  } else print(paste( operator, num1, "=", result))
  ask = readline(prompt="Do you wish to do another calculation? y or any other key ")
  if (ask != "y" )
    loop <- FALSE
}