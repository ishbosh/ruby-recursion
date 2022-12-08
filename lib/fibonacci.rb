def fibs(num)
  arr = Array.new([num, 2].min) { |index| index }
  arr << (arr[-1] + arr[-2]) until arr.length == num
  arr
end

def fibs_rec(num)
  return Array.new([num, 2].min) { |index| index } if num <= 2

  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end

p fibs(8)
p fibs_rec(8)
