n = gets.to_i
s, t = gets.chomp.split.map(&:to_s)
ans = ""

n.times do |i|
  ans << s[i]
  ans << t[i]
end

puts ans
