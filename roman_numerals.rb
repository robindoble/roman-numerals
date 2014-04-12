NUMERALS = {
1000 => "M",
900 => "IM",
500 => "D",
400 => "CD",
100 => "C",
50 => "L",
40 => "XL",
10 => "X",
9 => "IX",
5 => "V",
4 => "IV",
1 => "I"
}

def convert_to_roman(number)
	output = ""
		while number > 0 do
		closest_numeral = NUMERALS.find {|k,v| k <= number}
		output << closest_numeral[1]
		number = number - closest_numeral[0]
		end
	puts output
end

# convert_to_roman(gets.chomp.to_i)
convert_to_roman(8)
convert_to_roman(90)
convert_to_roman(450)
convert_to_roman(4789)


