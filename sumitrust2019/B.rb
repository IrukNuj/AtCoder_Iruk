n = gets.to_i
flag = false
ans = ""
n.times do |i|
  price = ((i+1) * 1.08).floor.to_i
  flag = true if price == n
  ans = i+1 if price == n
end


puts flag ? ans : ":("