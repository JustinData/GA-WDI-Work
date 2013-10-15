# move consenants to back & add "ay"

# add "way" to word begin w/ vowel

def translate(word)
	vowels = %w{a e i o u}
	vowels2 = %w{a e i o}

	@word = word

	if vowels.include?(@word[0])
		@word += "w"
	else
		until vowels2.include?(@word[0])
			@word += @word.slice!(0)
			# stop if y
			break if @word[0] == "y"
		end
	end

	@word += "ay"
end

puts translate("squeal")