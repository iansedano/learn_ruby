#write your code here



def pig_word(word)
	vowels = ["a", "e", "i", "o", "u"]

	if (word.match(/[A-z]/)) == nil
		new_word = word
	elsif vowels.include?(word[0..0])
		new_word = word+"ay"
	elsif word[0..1] == "qu"
		new_word = word[2..word.length] + word[0..1] + "ay"
	elsif vowels.include?(word[0..0]) == false && word[1..2] == "qu"
		new_word = word[3..word.length] + word[0..2] + "ay"
	elsif vowels.include?(word[0..0]) == false && vowels.include?(word[1..1]) == false && vowels.include?(word[2..2]) == false
		new_word = word[3..word.length] + word[0..2] + "ay"
	elsif vowels.include?(word[0..0]) == false && vowels.include?(word[1..1]) == false
		new_word = word[2..word.length] + word[0..1] + "ay"
	else
		new_word = word[1..word.length] + word[0..0] + "ay"
	end

	if word[0..0] == word[0..0].upcase
		return new_word.capitalize
	else
		return new_word.downcase
	end

end


def translate(sentence)
	array = sentence.split(/\b/)
	array = array.collect{|word| word = pig_word(word)}
	return array.join
end