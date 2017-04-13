arr = [5, 4, 1]
curr_number = 10
arr.each do |cur_number|
  some_var = 10
  print cur_number.to_s
end
puts
puts curr_number

adjustment = 5
arr.each do |cur_number;adjustment|
  adjustment = 10
  print "#{curr_number + adjustment}"
end
puts
puts adjustment