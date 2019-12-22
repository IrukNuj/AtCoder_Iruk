n = gets.chomp.to_s.chars.map(&:to_i)
ans = 0

p n

n.each_with_index do |m, i|
  digits = n.length-i
  puts "digits: #{digits}"
  exponentiation = digits-2 < 0 ? 0 : digits - 2
  puts exponentiation
  x = digits.to_i - 2 < 0 ? 0 : (digits.to_i - 2)
  zero_counts = x * (10**(digits-3) * 9) * (m+1)
  puts "zero_counts: #{zero_counts}"
  ans += zero_counts
end

ans += (n.length) * n.first

puts "ans: #{ans}"
# 桁数.to_i-1 * 9*10^桁数-2
# 桁数.to_s.countでよしなに？

