# 5.6 Challenge - Solving Problems with Data Structures

# Release 0

def search_array(array, number)
  index = 0
  while index < array.length
    array.each do |x|
      if x == number
        index
      end
      index += 1
    end
  end
end

arr = [42, 89, 23, 1]

# search_array(arr, 23)

# Release 1: Calculate Fibonacci Numbers

def fib(num)
  array = []
  num.times do |x|
    if x == 0
      array[x] = 0
    elsif x == 1
      array[x] = 1
    else
      array[x] = array[x-2] + array[x-1]
    end
  end
  array[0..num]
end

# p fib(6)

# Release 2: Sort an Array

# Begin with a scrambled list of numbers
# Starting with the first number in the list, check the number to the right to see if it's a smaller number.
# If the number to the right is smaller, make the numbers switch places.
# Keep checking the next number in the list and swap places where necessary
# Once no more swaps take place, return the new ordered list

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

p bubble_sort(arr)