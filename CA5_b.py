#10353830 Derek Baker

f = lambda x, y : x + y
print f(1,1)

#r = map(func, seq)
# Create functions to run te,p conversions
def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def celsius(t):
    return (float(5)/9*(t - 32))
	
# Set temp variable as a list of numbers 	
temp = (36.5, 37, 37.5, 39)

# Calculate the list assigned to the temp variable into fahrenheit and assign it to the variable 'F'
F = map(fahrenheit, temp)
# output the variable 'F'
print F
# Reverse the calculations and assign to the variable 'C' and output the variable 
C = map(celsius, F)
print C
#

# Create variables for lambda functions and output the lambda functions
a = [1,2,3,4]
b = [17,12,11,10]
c = [-1, -4, 5, 9]
print map(lambda x,y:x+y, a,b)
print map(lambda x,y,z:x+y+z, a,b,c)
print map(lambda x,y,z:x+y-z, a,b,c)

# Create a Fibonacci sequence and assign to the variable 'fib' 
fib = [0,1,1,2,3,5,8,13,21,34,55]
# Create a variable to output the results of a lamba function that returns odd numbers from the list
result = filter(lambda x: x % 2, fib)
print result
# Create a variable to output the results of a lamba function that returns even numbers from the list
result = filter(lambda x: x % 2 == 0, fib)
print result

# Create a variable to output the results of a lamba function that returns the max number from the list
max = lambda a,b: a if (a>b) else b
print reduce(max, [47, 11, 42, 13]) 

# Or create a function to do the same as above
def max(values):
	return reduce(lambda a,b: a if  (a>b) else b, values)	
print max([47, 11, 42, 13])

# Create a function to find the min value in a list and output
def min(values):
	return reduce(lambda a,b: a if  (a<b) else b, values)	
print min([47, 11, 42, 13])

# Create a function to add all values in a list and output
def add(values):
	return reduce(lambda a,b: a+b , values)
print add([47,45,11,5])

# Create a function to subtract all values in a list and output
def minus(values):
	return reduce(lambda a,b: a-b , values)
print minus([47,45,11,5])

# Create a function to multiply all values in a list and output
def multi(values):
	return reduce(lambda a,b: a*b , values)	
print multi([3,3,2,2])

# Create a function to divide all values in a list and output
def div(values):
	return reduce(lambda a,b: a/float(b) if (b != 0 and a != 'Nan') else 'Nan' , values)	
print div([300,0,2,2])

# Create a variable to output the results of a lamba function that returns the even numbers from the list
def is_even(values):
	return filter(lambda x: x%2 ==0, values)	
print is_even([5,2,7,415,5])

# Create a variable to output the results of a lamba function that returns the odd numbers from the list
def is_odd(values):
	return filter(lambda x: x%2 , values)
print is_odd([5,2,7,415,5])

# Create a function to do the power of a list
def power(values):
	return reduce(lambda a,b: a^b , values)
print power([5,2,7,415,5])	

# Create functions to do the convert of a list of temps	
def to_fahreheit(values):
	return map(fahrenheit, values)	
print to_fahreheit([53,20,68,100])

def to_cel(values):
	return map(celsius, values)	
print to_cel([53,20,68,100])


def sum(to):
	return reduce(lambda x, y: x+y, range(1, to+1))
print sum(100)

Celsius = [39.2, 36.5, 37.3, 37.8]
Fahrenheit = [ ((float(9)/5)*x + 32) for x in Celsius ]
print Fahrenheit

my_list = [ fahrenheit(x) for x in Celsius ]
print my_list

print [(x,y,z) for x in range(1,30) for y in range(x,30) for z in range(y,30) if x**2 + y**2 == z**2]


colours = [ "red", "green", "yellow", "blue" ]
things = [ "house", "car", "tree" ]
coloured_things = [ (x,y) for x in colours for y in things ]
print coloured_things


# Create a generator function
def city_generator():
    yield("Konstanz")
    yield("Zurich")
    yield("Schaffhausen")
    yield("Stuttgart")
	
x = city_generator()
print x.next()
print x.next()
print x.next()
print x.next()

# Create a generator function
cities = city_generator()
for city in cities:
	print city
		
def get_triplets(n):
	for x in range (1,n):
		for y in range(x,n):
			for z in range(y,n):
				if x**2 + y**2 == z**2:
					yield (x,y,z)
					
triplets = get_triplets(30)
for triplet in triplets:
	print triplet
print

	
def fibonacci(n):
    """Fibonacci numbers generator"""
    a, b,counter  = 0, 1,0
    while True:
	if (counter >=n): return
        yield a
        a, b = b, a + b
	counter +=1

f = fibonacci(5)

counter = 0
for x in f:
    print x,
print