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
