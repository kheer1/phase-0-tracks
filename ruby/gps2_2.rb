# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #  create the hash
  # name of item and total amount
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

items = "Lemonade, Tomatoes, Onions, IceCream"
#quantity = [2, 3, 1, 4]

def create_list (items)
	masterlist = {}
	itemslist = items.split(" ")
	itemslist.each do |quantity| 
		masterlist.merge!(quantity => 1)
	end
	return masterlist

end

def add_item (list, item, quantity)

	list.merge! item => quantity

end

#masterlist = add_item(masterlist, "cheese")


def remove_item (list, item)
	list.delete item
	return list
end

#masterlist = remove_item(masterlist, "cheese")

def update_list (list, item, quantity)
	list[:item]=quantity
	return list
end

def pretty_list (masterlist)

	masterlist.each do |item, quantity|

		puts "The item you got was: #{item} and you got #{quantity}"
	end

end

masterlist = create_list(items)
p masterlist
masterlist = update_list(masterlist, "Lemonade", 2)
p masterlist
masterlist = update_list(masterlist, "Tomatoes", 3)
p masterlist
masterlist = update_list(masterlist, "Onions", 1)
p masterlist
masterlist = update_list(masterlist, "IceCream", 4)

p masterlist
masterlist = remove_item(masterlist, "Lemonade")
p masterlist
masterlist = update_list(masterlist, "IceCream", 1)
p masterlist

pretty_list(masterlist)



# Method to add an item to a list
# input: item name and optional quantity ("carrots apples cereal pizza")
# steps: add item one at a time with quantity
# output: returning list, no output to the screen

# Method to remove an item from the list
# input: key and value 
# steps: check key and update value, if value is zero remove key
# output: returns list, no output to screen

# Method to update the quantity of an item
# input: key and value
# steps: check key and update value
# output:returns list

# Method to print a list and make it look pretty
# input: final list
# steps: print to screen
# output: list


