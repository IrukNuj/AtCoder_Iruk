a, b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

ans = 0

a.times do |a|
  ans += 1 if c[a] >= b
end

puts ans