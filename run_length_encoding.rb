
# Given an input string consisting of repeating characters, return a string 
# encoded with the number of occurrences of a character followed by the character.
# e.g.
# input: 'aabbbcddaa'
# returns -> '2a3b1c2d2a'

# 'aa'
# -> '2a'

def run_length(input)
	index = 0
	count = 0
	new_string = ''
	while index < input.length
		char = input[index]
		if (!input[index + 1])
			new_string.push(count + char)
		elsif (input[index + 1] == char)
			index += 1
			count += 1
		else
			# push count and char to new_string
			count = 0
			index += 1
		end
	end
	new_string
end




## Another way 
def string_convertor (string)
  character = string[0]
  count = 1
  new_string = ""
  (1..(string.length-1)).each do |i|
    if character == string[i]
      count += 1
    else
      new_string += "#{count}#{character}"
      character = string[i]
      count = 1
    end
    if i == string.length-1
      new_string += "#{count}#{character}"
    end
  end
  return new_string
end

puts "string_convertor(\"aabbbcddaa\") --> #{string_convertor('aabbbcddaa')}"

