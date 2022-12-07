def merge_sort(array)
  mid = (array.length - 1) / 2
  if array.length < 2
    return array
  else
    left = merge_sort(array[0..mid])
    right = merge_sort(array[(mid + 1)..array[-1]])

    left < right ? array.first = left : array.first = right
  end
  array
end

p merge_sort([3,1,0,9,5,10,3,2,7,0,8,7,3,1])
