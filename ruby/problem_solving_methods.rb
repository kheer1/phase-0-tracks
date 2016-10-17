#5.6 Mandatory Pairing: Solving Problems with Data Structures
#Release 0: Implement a Simple Search
def search_array(array, int)
  
    return_value = nil
    x = 0
    while x < array.length
    
      if array[x] == int
        return return_value = x
      else 
        x += 1
      end
  end
  return return_value
end

arr = [42, 89, 23, 1]
puts search_array(arr, 1)


#Release 1: Calculate Fibonacci Numbers
def fibonacci(integer)
    array = []
    x = 0
  
    while x < integer
  
        if x < 2
            array << x
        else
            array << (array[x-2] + array[x-1])
        end

    x += 1
    end

  return array
  
end

p fibonacci(6)
puts fibonacci(100).last == 218922995834555169026


#Release 2: Sort an Array
#Goes through the array to see if there is a larger number infront of a smaller number, swaps the two and goes down the array. It keeps looping through until there's no number larger then the number that comes after it
def bubble_sort(array)
    begin
      
      swapped = false
    
    array.length.times do |x|
      if x < array.length - 1 && array[x] > array[x+1]
            array[x], array[x+1] = array[x+1], array[x]
            swapped = true
        end
        end
  end while swapped == true
    
    return array
end

array1 = [5, 4, 3, 2, 1]
p array1
p bubble_sort(array1)
