# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  #  create the hash
  # name of item and total amount
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

items = "Lemonade Tomatoes Onions IceCream"
quantity = [2, 3, 1, 4]

def create_list (items,quantity)
  masterlist = {}
  itemslist = items.split(" ")
  itemslist.each_with_index do |item,num|
    masterlist[item]=quantity[num]
   end
  return masterlist
end

# Method to add an item to a list
# input: item name and optional quantity ("carrots apples cereal pizza")
# steps: add item one at a time with quantity
# output: returning list, no output to the screen

def add_item (list, item, quantity)
  	list[item] = quantity
  	return list
 end


# Method to remove an item from the list
# input: key and value
# steps: check key and update value, if value is zero remove key
# output: returns list, no output to screen

def remove_item (list, item)
  	list.delete(item)
  	return list
 end

# Method to update the quantity of an item
# input: key and value
# steps: check key and update value
# output:returns list

def update_list (list, item, quantity)
  	list[item] = quantity
  	return list
 end

# Method to print a list and make it look pretty
# input: final list
# steps: print to screen
# output: list

def pretty_list (masterlist)
  	puts "Thank you, here is your final list:"
  	
  	masterlist.each do |item, quantity|
    	puts "#{item}:#{quantity}"
	end
end

# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking

masterlist = create_list(items, quantity)
masterlist = remove_item(masterlist, "Lemonade")
masterlist = update_list(masterlist, "IceCream", 1)
pretty_list(masterlist)
