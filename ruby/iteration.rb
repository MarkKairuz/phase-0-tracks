#Paired with Mark Kairuz

# Write your own method that takes a block
# def message
#  puts "This is an example of running a block through a method"
#  yield("pizza", "hamburger", "KFC")
#  puts "The above is the result"
# end
# message { |food1, food2, food3| puts "My favorite foods are #{food1}, #{food3} and #{food2}" }


# Step 1
make_of_car = ["Ford", "Toyota", "Honda"]
make_model_of_car = {:Ford => "taurus", :Toyota => "corolla", :Honda => "civic"}

# Step 2
# Using .each on array
puts "Original data:"
p make_of_car
puts "Below is using the .each block:"
make_of_car.each do |item|
  p item + " is the best car company"
end
puts "After .each call:"
p  make_of_car

# Using .map! on array
puts "Original Data:"
p make_of_car
make_of_car.map! do |item|
  p item + " is the best car company"
end
puts "After .map! call:"
p make_of_car

#Using .each on the hash
puts "Original hash:"
p make_model_of_car

make_model_of_car.each do |make, model|
  puts "#{make} makes the #{model}"
end
puts "After .each on hash:"
p make_model_of_car

#Release 2
#1
simple_array1 = [1, 5, 10]
simple_array1.delete_if {|x| x < 3}
p simple_array1
simple_hash1 = {"a" => 1, "b" => 5, "c" => 10}
simple_hash1.delete_if {|x, y| y < 3}
p simple_hash1
#2
simple_array2 = [1,5,10]
simple_array2.keep_if {|x| x < 6}
p simple_array2
simple_hash2 = {"a" => 1, "b" => 5, "c" => 10}
simple_hash2.keep_if {|x,y| x != "b"}
p simple_hash2
#3
simple_array3 = [1, 8, 2, 3, 5, 125, 12]
simple_array3.select! {|x| x.odd?}
p simple_array3
simple_hash3 = {"a" => 1, "c" => 6, "d" => 5, "e" => 12,}
simple_hash3.select! {|x, y| y.even?}
p simple_hash3
#4
new_array = []
simple_array4 = [54, 36, 29 , 8 , 7, 145, 19]
new_array = simple_array4.drop_while {|x| x >= 36}
p new_array
new_hash = {}
simple_hash4 = {"a" => 1, "b" => 2, "c" => 40}
new_hash = simple_hash4.drop_while {|x, y| y < 2}
p new_hash
