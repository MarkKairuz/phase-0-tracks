# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Use .split to break up each word in the string
  # Convert array into a hash
  # Create an empty hash
  # Shovel the information from the array into the hash
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a hash to store input
# output: the hash 

# Method to remove an item from the list
# input: item name to remove
# steps: method to delete key-value from hash
# output: the hash with the item removed

# Method to replace the quantity of an item
# input: item name and quantity to update
# steps: method to replace quantity of item
# output: the hash with the quantity updated

# Method to print a list and make it look pretty
# input: the hash itself
# steps: use iteration to print sentences of items
# output: pretty sentences that state item and quantity to purchase

puts "What items do you want to purchase?"
items_to_purchase = gets.chomp

def create_list(entered_list) 
 entered_list = entered_list.split
 shopping_list = Hash.new
 shopping_list = Hash[entered_list.collect {|item| [item, 1]}]
 p shopping_list
end

 def item_add(add_list)
 	puts "What would you like to add to the list? Type 'done' when you are finished."
 	add_item = gets.chomp
 	quantity = 1
 	while add_item != "done"
 	puts "How many of this item do you want to add to the list?"
 	quantity = gets.chomp
 	add_list[add_item] = quantity
 	puts "What would you like to add to the list? Type 'done' when you are finished."
 	add_item = gets.chomp
 	end
 	p add_list
 end

 def item_delete(delete_item)
 	puts "What would you like to delete? Type 'done' when you are finished."
 	del_item = gets.chomp
 	while del_item != "done"
 	delete_item.delete(del_item)
 	puts "What would you like to delete? Type 'done' when you are finished."
 	del_item = gets.chomp
 end
 	p delete_item
end

def number_change(num_change)
 puts "What would you like to change? Type 'done' when you are finished."
 change = gets.chomp
 while change != "done"
 	puts "What is the updated quantity for #{change}?"
 	updated_info = gets.chomp
 	num_change[change] = updated_info
 	puts "What would you like to change? Type 'done' when you are finished."
 	change = gets.chomp
 end
 p num_change
end


list1 = create_list(items_to_purchase)
list2 = item_add(list1)
list3 = item_delete(list2)
list4 = number_change(list3)

puts "**************************************************"
puts "Updated Grocery List"
list4.each {|key, data| puts "#{key}: #{data}"}
