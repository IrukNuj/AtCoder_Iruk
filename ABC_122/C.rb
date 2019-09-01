a, b = gets.split.map(&:to_i)
str = gets.chomp
ans = []
b.times do
  c, d = gets.chomp.split.map(&:to_i)
  tmp = str[c - 1..d - 1]
  ans << tmp.scan(/AC/).size
end

ans.each do |a|
  puts a
end