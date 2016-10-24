class TodoList

	attr_accessor :list

	def initialize(list)
		@list = list
	end

	def add_item(item)
		@list << item
		return @list
	end

	def delete_item(item)
		@list.delete(item)
		return @list
	end

	def get_items
		return @list
	end

	def get_item(num)
		return @list[num]
	end
end