def romanNumeral(num)
	thous = (num/1000).floor
	num = num - thous*1000
	hund = (num/100).floor
	num = num - hund*100
	fifty = (num/50).floor
	num = num - fifty*100
	tens = (num/10).floor
	num = num - tens*10
	fives = (num/5).floor
	num = num - fives*5
	ones = num

	romans = "M"*thous + "C"*hund + "L"*fifty + "X"*tens + "V"*fives + "I"*ones
end

input1 = 1234
input2 = 579
input3 = 363
input4 = 364

result1 = romanNumeral(input1)
puts result1