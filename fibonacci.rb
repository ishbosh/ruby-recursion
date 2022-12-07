def fibs(n)
  fib = Array.new([n, 2].min) { |index| index}
  loop do
    break if fib.length == n

    fib << (fib[-1] + fib[-2])
  end
  fib
end


def fibs_rec(n)
  return Array.new([n, 2].min) { |index| index} if n <= 2
  arr = fibs_rec(n - 1)
  arr << arr[-2] + arr[-1]
end