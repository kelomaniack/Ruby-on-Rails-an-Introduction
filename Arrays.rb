het_arr = [1, "two", :three] #heterogeneous types
puts het_arr

arr_words = %w{ what a great day today!}
puts arr_words[-2]

puts"#{arr_words.first} - #{arr_words.last}"

puts "hello"

p arr_words[-3, 2]

p arr_words[2..4]

puts arr_words.join(',')