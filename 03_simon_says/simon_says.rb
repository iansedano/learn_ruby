#write your code here

def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, x = 1)
	newstring = string + " " + string
	x = x - 2
	x.times do
		newstring = newstring + " " + string
	end
	newstring
end

def start_of_word(string, x = 1)
	string[0..x - 1]
end

def first_word(string)
	array = string.split
	array[0]
end

def titleize(string)
	string = string.capitalize
	array = string.split
	array = array.collect{|word|
		if word == "and"
			word
		elsif word == "the"
			word
		elsif word == "over"
			word
		else
			word.capitalize
		end}
	array.join(" ")
end