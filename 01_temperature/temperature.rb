#write your code here

def ftoc(temp)
	if temp == 32
		return 0
	elsif temp > 32.0
		return (temp - 32.0) * (5.0 / 9.0)
	elsif temp < 32.0
		return (32.0 - temp) * (5.0 / 9.0) * -1
	end
end

def ctof(temp)
	if temp == 0
		return 32
	elsif temp > 0
		return (temp / (5.0/9.0)) + 32
	elsif temp < 0
		return ((-1 * temp) / (5.0/9.0)) - 32
	end
end

