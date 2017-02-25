# 5.6 Challenge - Solving Problems with Data Structures

# Release 0

def search_array(array, number)
  index = 0
  while index < array.length
    array.each do |x|
      if x == number
        p index
      end
      index += 1
    end
  end
end

arr = [42, 89, 23, 1]

search_array(arr, 23)
