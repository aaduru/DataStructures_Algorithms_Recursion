def binary_search(arr,target)
  return nil if arr.empty?
  pivot = arr.length/2

  case target <=> arr[pivot]
  when -1
    binary_search(arr.take(pivot),target)
  when 0
    pivot
  when 1
    sub_ans = binary_search(arr.drop(pivot+1), target)
    (sub_ans.nil?) ? nil : (pivot+1) + sub_ans
  end
end

p binary_search([1, 2, 3], 1) # => 0
p binary_search([2, 3, 4, 5], 3) # => 1
p binary_search([2, 4, 6, 8, 10], 6) # => 2
p binary_search([1, 3, 4, 5, 9], 5) # => 3
p binary_search([1, 2, 3, 4, 5, 6], 6) # => 5
p binary_search([1, 2, 3, 4, 5, 6], 0) # => nil
p binary_search([1, 2, 3, 4, 5, 7], 6) # => nil
