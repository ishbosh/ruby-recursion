# frozen_string_literal: true

def merge_sort(array)
  mid = (array.length - 1) / 2
  return array if array.length < 2

  left = merge_sort(array[0..mid])
  right = merge_sort(array[mid + 1..array.length])

  merged = []
  merged << (left[0] < right[0] ? left.shift : right.shift) until left.empty? || right.empty?
  merged + left + right
end

puts 'Sorting an array of random numbers: '
random_array = Array.new(rand(8..15)) { rand(0..50) }
print "\nBefore: #{random_array}"
print "\nAfter:  #{merge_sort(random_array)}\n"
