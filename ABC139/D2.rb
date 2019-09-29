a = gets.to_i
b = gets.split.map(&:to_i)
tmp = 0
ans = 0

b.each_with_index do |x, i|
  b[i+1].try(x >= b[i+1] ? tmp += 1 : tmp = 0) 
  ans = tmp if ans < tmp
end

p ans
