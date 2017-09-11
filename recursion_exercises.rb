## sum of n values
def sum_numbers(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_numbers(n - 1)
end

puts sum_numbers(5)


def add_numbers(arr)
  return nil if arr.length < 1
  return arr.first if arr.length == 1

  x = arr.pop
  x + add_numbers(arr)
end

puts add_numbers([1,2,3,4]) # => returns 10
puts add_numbers([3]) # => returns 3
puts add_numbers([-80,34,7]) # => returns -39
puts add_numbers([]) # => returns nil


def gamma_fnc(n)
  return nil if n < 1
  return 1 if n == 1
  (n-1) * gamma_fnc(n-1)
end
puts gamma_fnc(0)  # => returns nil
puts gamma_fnc(1)  # => returns 1
puts gamma_fnc(4)  # => returns 6
puts gamma_fnc(8)  # => returns 5040


def ice_cream_shop(arr,value)
  return false if arr.empty?
  return true if arr.last === value
  ice_cream_shop(arr[0...-1], value)

end
puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
puts ice_cream_shop([], 'honey lavender')  # => returns false


def reverse(string)
  return "" if string.length < 1
  reverse(string[1..-1]) + string[0]
end
puts reverse("house") # => "esuoh"
puts reverse("dog") # => "god"
puts reverse("atom") # => "mota"
puts reverse("q") # => "q"
puts reverse("id") # => "di"
puts reverse("") # => ""
