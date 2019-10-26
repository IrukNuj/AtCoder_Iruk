a = gets.to_i
b = gets.to_s.chomp
ans = 0
tmp = ""
b.each_char do |s|
  ans += 1 if s != tmp
  tmp = s
end

puts ans