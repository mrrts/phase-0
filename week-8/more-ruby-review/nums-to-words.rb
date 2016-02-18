# Print English words for any number from -999,999,999,999,999 to 999,999,999,999,999
# Example: num_to_words(4560021.35)

def num_to_words(num, final_pass = true)

	WORDS = {0 => ["zero", nil], 1 => ["one", nil], 2 => ["two", "twen"], 3 => ["three", "thir"], 4 => ["four", "for"], 5 => ["five", "fif"], 6 => ["six", "six"], 7 => ["seven", "seven"], 8 => ["eight", "eigh"], 9 => ["nine", "nine"]}

	PLACES = {1000000000000 => " trillion ", 1000000000 => " billion ", 1000000 => " million ", 1000 => " thousand "}	

	orig_num = num.to_s.gsub(',' , '')
	num = orig_num.to_i

	if num < 0
		print "negative "
		num = -num
	end

	PLACES.each do |factor, place|
		if num >= factor
			multiples = num / factor
			num_to_words(multiples, false)
			print place
			num -= multiples * factor
		end
	end

	## Print everything from the hundreds place onward
	hundreds = num / 100  # Division of integers rounds down to nearest integer (399/100 == 3)
	tens = (num - hundreds * 100) / 10
	ones = num - hundreds * 100 - tens * 10
	print WORDS[hundreds][0] + ' hundred ' if hundreds > 0
	if tens == 1 && ones > 2 # the teens
		print (ones == 4 ? 'four' : WORDS[ones][1]) + 'teen'
	elsif tens == 1 && ones > 0 # 11 and 12
		print (ones == 1 ? 'eleven' : 'twelve')
	elsif tens == 1 # 10
		print 'ten'
	else # 1 to 9 and 20 to 99
		print WORDS[tens][1] + 'ty' if tens > 0
		print '-' if tens > 0 && ones > 0
		print WORDS[ones][0] if ones > 0
	end

	if final_pass
		print 'zero' if orig_num.to_i == 0
		if orig_num.include?('.')
			print ' (point) '
			decimal = orig_num.split('.')[1].split('')
			decimal.each {|d| print WORDS[d.to_i][0] + ' '}
		end
		puts "\n"
	end

end


## Examples

(-1..100).each do |n|
	num_to_words(n)
end

num_to_words(-4560021.35)
