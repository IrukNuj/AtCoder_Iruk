a, b = gets.split.map(&:to_i)
c, ans = 1, 0

loop do
  break if c >= b
  ans += 1
  c += a - 1
end
puts ans