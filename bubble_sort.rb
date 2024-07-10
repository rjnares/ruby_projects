def bubble_sort(array)
  sorted_array = Array.new(array)

  (sorted_array.length - 1).downto(0) do |max_index|
    curr_max_index = 0
    
    for i in 1..max_index
      if sorted_array[curr_max_index] < sorted_array[i]
        curr_max_index = i
      end
    end

    curr_max = sorted_array[curr_max_index]
    sorted_array[curr_max_index] = sorted_array[max_index]
    sorted_array[max_index] = curr_max
  end

  sorted_array
end

array = [4,3,78,2,0,2]

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