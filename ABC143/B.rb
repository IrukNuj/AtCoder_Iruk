_ = gets.to_i
b = gets.split.map(&:to_i)
ans = 0
b.each_with_index do |b1, i|
  (b.length - i -1).times do |n|
    ans += b1 * b[b.length - n -1]
  end
end
puts ans