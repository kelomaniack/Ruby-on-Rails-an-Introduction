# a = 10
#
# while a > 9
#   puts a
#   a -= 1
#
# end
#
# a = 9
#
# until a >=10
#   puts a
#   a += 1
# end
#
# a = 5
# b = 0
#
# puts "One liner" if a == 5 and b == 0
# # => One liner
#
# #while modifier form
#
# times_2 = 2
# times_2 *= 2 while times_2 < 100
# puts times_2 #=>?
#
# puts "0 is true" if 0
# puts "false is true?" if "false"
# puts "empty string is true" if false
# puts "empty string is true" if ""
# puts "nil is true?" if "nil" # => nil is true?
# puts "no way - nil is false" if nil # => NOTHING PRINTED

# if /sera/ === "coursera"
#   puts "Triple Equals"
# end
# # => Triple Equals
#
# if "coursera" === "coursera"
#   puts "also works"
# end
# # => als works
#
# if Integer === 21
#   puts "21 is an Integer"
# end
# # => 21 is an Integer

age = 21

case
  when age >= 21
    puts "You can buy a drink"
  when 1 == 0
    puts "Written by a drunk programmer"
  else
    puts "Default condition"
end
# => You can buy a drink

name = 'Fisher'
case name # 2nd FLAVOR
  when /fish/i then
    puts "Something is fishy here"
  when 'Smith' then
    puts "Your name is Smith"
  else
    "Eat shit"
end

for i in 0..2
  puts i
end




