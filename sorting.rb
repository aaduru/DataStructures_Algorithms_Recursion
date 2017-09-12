##Quick sort

def quicksort(arr)
  return arr if arr.length <= 1
  pivot = arr.first
  left = arr[1..-1].select { |el| el < pivot }
  right = arr[1..-1].select { |el| el >= pivot }
  quicksort(left) + [pivot] + quicksort(right)
end

p quicksort([1,5,6,3,2,1,4,5,23,88])



  def selectionsort(arr)
    for i in 0..arr.length-2
      min_idx = i
      for j in (i+1)...arr.length
        min_idx = j  if arr[j] < arr[min_idx]
      end
      arr[i], arr[min_idx] = arr[min_idx], arr[i]
    end
    arr
  end


p selectionsort([7,6,5,9,8,4,3,1,2,0])


def bubblesort(arr)
  sorted = false
  until sorted
    sorted = true
    (0...(arr.length-1)).each do |idx|
      if arr[idx] > arr[idx+1]
        arr[idx],arr[idx+1] = arr[idx+1],arr[idx]
        sorted = false
      end
    end
  end
  arr
end

p bubblesort([7,6,5,9,8,4,3,1,2,0])


  def mergesort(arr)
    return arr if arr.length < 2
    middle_index = arr.length / 2

    left, right = arr.take(middle_index), arr.drop(middle_index)
    sorted_left, sorted_right = mergesort(left), mergesort(right)

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
      merged_array <<
        ((left.first < right.first) ? left.shift : right.shift)
    end

    merged_array + left + right
  end

p mergesort([7,6,5,9,8,4,3,1,2,0])
