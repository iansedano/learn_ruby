class Book
# write your code here
	attr_accessor :title

	def title=(value)
		@title = titleize(value)
	end

	

	def titleize(string)

	prepositions = ["in", "at", "to", "from", "by", "over", "of"]
	conjunctions = ["and"]
	articles = ["the", "a", "an"]

	string = string.capitalize
	array = string.split
	array = array.collect{|word|
		if prepositions.include?(word.downcase) || conjunctions.include?(word.downcase) || articles.include?(word.downcase)
			word
		else
			word.capitalize
		end}
	array.join(" ")
	end

end
