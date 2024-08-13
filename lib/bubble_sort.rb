def bubble_sort(array)
  sorted_array = Array.new(array)

  for i in 0...sorted_array.length
    sorted = true

    for j in 0...(sorted_array.length - 1 - i)
      if sorted_array[j] > sorted_array[j + 1]
        sorted = false
        sorted_array[j], sorted_array[j + 1] = sorted_array[j + 1], sorted_array[j]
      end
    end

    break if sorted
  end

  sorted_array
end

# Expect: [0,2,2,3,4,78]
p bubble_sort([4,3,78,2,0,2])

# Expect: [0,1,2,3,4,5,6,7,8,9,10]
p bubble_sort([10,9,8,7,6,5,4,3,2,1,0])

# Expect: [-5,-4,-3,-2,-1,0,1,2,3,4,5]
p bubble_sort([-5,-4,-3,-2,-1,0,5,4,3,2,1])

# Expect: [-5,-4,-3,-2,-1,0,1,2,3,4,5]
p bubble_sort([-1,-2,-3,-4,-5,0,1,2,3,4,5])

# Expect: [-5,-4,-3,-2,-1,0,1,2,3,4,5]
p bubble_sort([-1,-2,-3,-4,-5,0,5,4,3,2,1])

# Expect: [-5,-4,-3,-2,-1,0,1,2,3,4,5]
p bubble_sort([-5,-4,-3,-2,-1,0,1,2,3,4,5])