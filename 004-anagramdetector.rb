require "pry"

def anagramsorter(stringpair)
	firstword = stringpair[0].gsub(/ /, "")
	secondword = stringpair[1].gsub(/ /, "")
	i =0
	check = true
	while i < firstword.length do
		while check == true do
			character = firstword[i]
			if character == nil
				check = false
			else
				check = secondword.include? character
				secondword = secondword.gsub(character, "")
				binding.pry
				i += 1
			end
		end
	end
	return secondword
end

def anagramchecker(secondwordwhatsleft)

	if secondwordwhatsleft == ""
		return true
	else
		return false
	end
end

input1 = ["wisdom", "mid sow"]
input2 = ["Seth Rogan", "Gathers No"]
#input3 = ["Reddit", "Eat Dirt"]
#input4 = ["Schoolmaster", "The classroom"]
#input5 = ["Astronomers", "Moon starer"]
# input6 = ["Vacation Times", "I'm Not as Active"]


#firstresult1 = anagramsorter(input1)
#result1 = anagramchecker(firstresult1)


result2 = anagramchecker(anagramsorter(input2))
#result3 = anagramchecker(anagramsorter(input3))
#result4 = anagramchecker(anagramsorter(input4))
#result5 = anagramchecker(anagramsorter(input5))
# result6 = anagramchecker(anagramsorter(input6))

#puts result1
puts result2
#puts result3
#puts result4
#puts result5
# puts result6