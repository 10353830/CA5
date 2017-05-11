#Derek Baker 10353830
#
#Set num2 to avoid error when automatic calculations are run
num2 <- 1
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
print("a.AUTOMATIC CALCULATIONS")
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
print("q.Quit")

loop <- TRUE
while(loop){
  intselected = c()
  # Get user input
  selection = readline(prompt="Enter your selection: ")
#Set input to lowercase
  selected = tolower(selection)
  if (selected == "q") {
    print("Goodbye")
    break()
  }
#Do automatic calculations
  if (selected == "a") {
    print(paste("45 plus 45 = ",add(45,45)))
    print(paste("45 minus 15 = ",subtract(45,15)))
    print(paste("3 times 15 = ",multiply(3,15)))
    print(paste("45 divided by 15 = ",divide(45,15)))
    print(paste("3 to power of 3 = ",power(3,3)))
    print(paste("3 exponentiate 3 = ",exp(3,3)))
    print(paste("Square root of 36 = ",sqrts(36)))
    print(paste("Sin 45 = ",sine(45)))
    print(paste("Cos 45 = ",coS(45)))
    print(paste("Tan 45 = ",taN(45)))
    print("Goodbye!")
    break()
  }
#Switch selection to integer
  intselected = as.integer(selected)
#Check for out of range
  if (intselected < 0 || intselected > 10){
    print("You have made an invalid selection, Goodbye!")
    break()
  }
#Request 1st number
  num1 = as.numeric(readline(prompt="Enter number for calculation: "))
#Only select 2nd number if required
  if (intselected <=6) {
    num2 = as.numeric(readline(prompt="Enter second number: "))
  }
#Get output
  operator <- switch(intselected,"Plus","Minus","Times","Divided by","To the Power of", "to Exponent of","The Square Root of","Sin of","Cos of","Tan of")
#Do calculations
  result <- switch(intselected, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2)
                   ,power(num1, num2), exp(num1, num2), sqrts(num1), sine(num1), coS(num1), taN(num1))
#Show result
  if (intselected <=6){
    print(paste(num1, operator, num2, "=", result))
  } else print(paste( operator, num1, "=", result))
#Ask to keep looping
  ask = readline(prompt="Do you wish to do another calculation? y or any other key ")
  if (ask != "y" )
    loop <- FALSE
    print("Goodbye!")
}