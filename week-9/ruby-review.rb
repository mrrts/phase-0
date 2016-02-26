# Method take in a number
# IF 0-9 ELSIF 10-19 ELSIF 20-99 ELSE 100



def in_words(num)

  numbers = {1 => ["one", "ten", "eleven"], 2 => ["two", "twenty", "twelve"], 3 => ["three", "thirty", "thirteen"], 4 => ["four", "forty", "fourteen"], 5 => ["five", "fifty", "fifteen"], 6 => ["six", "sixty", "sixteen"], 7 => ["seven", "seventy", "seventeen"], 8 => ["eight", "eighty", "eighteen"], 9 => ["nine", "ninety", "ninteen"]}

  if (1..9).include? num
    word = numbers[num][0]
  elsif (11..19).include? num
    num -= 10
    word = numbers[num][2]
  elsif num % 10 === 0 && num != 100
    num /= 10
    word = numbers[num][1]
  elsif (20..99).include? num
    finder = num.to_s.split("")[0].to_i
    finder2 = num.to_s.split("")[1].to_i
    word = numbers[finder][1] + "-" + numbers[finder2][0]
  else
    word = "one hundred"
  end
  return word
end

(1..100).each do |num|
  puts in_words(num)
end


## REFLECTION

# --- What concepts did you review in this challenge?

# We reviewed data structures because we organized our 'number words' as an association of integers/digits with their 
# respective english word forms. This became a hash with the integers/digits as keys and arrays of word-strings as the
# values.


# --- What is still confusing to you about Ruby?

# I do not always know whether my code is the fastest, most efficient possible way to implement something because I am 
#   not always sure about the performance hit that my program design causes. This would require some experimentation 
#   with clocking. For instance, I would like to know if it is more costly to do a bunch of if/else statements, or how costly 
#   is it to keep converting the types in our above examples? Should we have tried to refactor that, or is the speed difference
#   negligible? I know this is only a small program in which such changes would make no difference, but it seems like something 
#   I will want to understand down the road.


# --- What are you going to study to get more prepared for Phase 1?

# I learn most by doing and experimenting without fear of breaking something... the constant cause-effect feedback loop. 
# Therefore, I think I would benefit just by playing with some 'what-if' ideas for any free time I have before P1. I would 
# also like to read something about general good-practice programming, like "the Pragmatic Programmer" or something. Perhaps I will
# see if they have that at Barnes & Noble tomorrow. Alternatively, I can see what I can find online.