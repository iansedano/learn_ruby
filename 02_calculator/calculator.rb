#write your code here

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	sum = 0
	array.each{|num| sum = num + sum}
	return sum
end

def multiply(x, *y)
	sum = x
	y.each{|num| sum = sum * num}
	return sum
end

def power(x, y)
	sum = x
	y = y - 1
	y.times do
		sum = sum * x
	end
	return sum
end

def factorial(x)
	if x == 0
		return 1
	else
		sum = x
		x = x - 1
		x.times do
			sum = sum * x
			x = x - 1
		end
		return sum
	end
end