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

def alternative_convert_to_roman(number)
	output = ""
	until number == 0 do
		case 
			when (number/1000.0) >= 1
				output << "M".*((number/1000.0).to_i) ; number = number - ((number/1000.0).to_i)*1000
			when (number/900.0) >= 1 
				output << "IM" ; number = number - 900
			when (number/500.0) >= 1 
				output << "D" ; number = number - 500
			when (number/400.0) >= 1 
				output << "CD" ; number = number - 400 
			when (number/100.0) >= 1 
				output << "C".*((number/100.0).to_i) ; number = number - ((number/100.0).to_i)*100
			when (number/90.0) >= 1 
				output << "XC" ; number = number - 90
			when (number/50.0) >= 1 
				output << "L" ; number = number - 50
			when (number/40.0) >= 1
				output << "XL" ; number = number - 40
			when (number/10.0) >= 1
				output << "X".*((number/10.0).to_i) ; number = number - ((number/10.0).to_i)*10
			when (number/9.0) >= 1 
				output << "IX" ; number = number - 9
			when (number/5.0) >= 1 
				output << "V" ; number = number - 5
			when (number/4.0) >= 1 
				output << "IV" ; number = number - 4
			when (number/1.0) >= 1 
				output << "I".*((number/1.0).to_i) ; number = number - ((number/1.0).to_i)*1
			end 
	end			
	puts output			
end


(1..1000).each_with_index {|i| print "#{i}. #{alternative_convert_to_roman(i)}"}
