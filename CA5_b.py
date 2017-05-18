f = lambda x, y : x + y
print f(1,1)

#r = map(func, seq)

def fahrenheit(t):
    return ((float(9)/5)*t + 32)
def celsius(t):
    return (float(5)/9*(t - 32))
temp = (36.5, 37, 37.5, 39)

F = map(fahrenheit, temp)
print F
C = map(celsius, F)
print C


a = [1,2,3,4]
b = [17,12,11,10]
c = [-1, -4, 5, 9]
print map(lambda x,y:x+y, a,b)
print map(lambda x,y,z:x+y+z, a,b,c)
print map(lambda x,y,z:x+y-z, a,b,c)

#r = filter(func, seq)


fib = [0,1,1,2,3,5,8,13,21,34,55]
result = filter(lambda x: x % 2, fib)
print result

result = filter(lambda x: x % 2 == 0, fib)
print result

print reduce(lambda x, y: x+y, [47, 11, 42, 13])
max = lambda a,b: a if (a>b) else b
print reduce(max, [47, 11, 42, 13]) 

# Or 
def max(values):
	return reduce(lambda a,b: a if  (a>b) else b, values)
	
print max([47, 11, 42, 13])

def min(values):
	return reduce(lambda a,b: a if  (a<b) else b, values)
	
print min([47, 11, 42, 13])

def add(values):
	return reduce(lambda a,b: a+b , values)
	
print add([47,45,11,5])

def minus(values):
	return reduce(lambda a,b: a-b , values)
	
print minus([47,45,11,5])

def multi(values):
	return reduce(lambda a,b: a*b , values)
	
print multi([3,3,2,2])

def div(values):
	return reduce(lambda a,b: a/float(b) if (b != 0 and a != 'Nan') else 'Nan' , values)
	
print div([300,0,2,2])

def is_even(values):
	return filter(lambda x: x%2 ==0, values)
	
print is_even([5,2,7,415,5])

def is_odd(values):
	return filter(lambda x: x%2 , values)
	
print is_odd([5,2,7,415,5])

print 'power'
def power(values):
	return reduce(lambda a,b: a^b , values)
print power([5,2,7,415,5])	
	
def to_fahreheit(values):
	return map(fahrenheit, values)
	
print to_fahreheit([53,20,68,100])

def to_cel(values):
	return map(celsius, values)
	
print to_cel([53,20,68,100])

def sum(to):
	return reduce(lambda x, y: x+y, range(1, to+1))
print sum(100)

celsius = [39.2, 36.5, 37.3, 37.8]
fahrenheit = [ ((float(9)/5)*x + 32) for x in celsius ]
print fahrenheit

my_list = [ fahreheit(x) for x in celcius ]
print my_list















	
