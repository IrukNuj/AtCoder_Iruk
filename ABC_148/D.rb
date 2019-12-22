n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
memo = 1

a.each do |i|
  memo == i ? memo += 1 : ans += 1
end

puts ans == n ? -1 : ans