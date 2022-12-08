def fibs(num)
  fib = Array.new([num, 2].min) { |index| index }
  loop do
    break if fib.length == num

    fib << (fib[-1] + fib[-2])
  end
  fib
end

def fibs_rec(num)
  return Array.new([num, 2].min) { |index| index } if num <= 2

  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end

p fibs(8)
p fibs_rec(8)
