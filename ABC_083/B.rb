a, b, c = gets.split.map(&:to_i)
sum = 0

(0..a).each do |i|
  add = 0
  i.to_s.chars do |n|
    add = add + n.to_i
  end
  sum = sum + i if (b..c).include?(add)
end

puts sum