require 'pry'
#
def pigify(sentence)
	# Convert sentence to lower case
	# split sentence into array of words
	words_array = sentence.downcase.split()

	# for each word...
	amended_words = []
	for word in words_array
		# Move first letter to the end
		# Add "ay" to the end of each word
		amended_words << (word[1..-1] + word[0] + "ay")
		#binding.pry
	end

	# join words to make a new string
	# Capitalize first letter of first word
	# return sentence
	return amended_words.join(" ").capitalize()
end

def reduce_number(number_to_reduce)
	while number_to_reduce >= 10
		# Turn number_to_reduce in to string
		# turn strings in to array
		numbers_to_string_array = number_to_reduce.to_s().chars()

		new_number = 0

		#convert strings back in to integers
		for number in numbers_to_string_array
			new_number += number.to_i()
		end
		# Return new number to reduce
		return number_to_reduce = new_number
	end
end


def reduce_number(number)
  while number >= 10
		sum = 0
		number.to_s.chars { |character| sum += character.to_i }
		return sum
  end
end





def order_total(order)
	book_order_total_cost = 0
	unique_books = 0
	discount_percentage = 0
	discount_price = 0
# .count will count the elements in an array (therefore integer)
# in a if statement, unique_books = 10 resets to 10 if > 10
	unique_books = order[:items][1..-1].uniq { |e| e[:title] }.count

	if unique_books >= 10
		unique_books = 10
	end

  discount_percentage = unique_books * 5

	for item in order[:items]
	  book_order_total_cost += item[:price] * item[:quantity]
	  discount_price = book_order_total_cost / 100 * discount_percentage
	end

	final_total = book_order_total_cost - discount_price

	return "#{order[:name]}'s total is £#{final_total.round(2)}"
end
