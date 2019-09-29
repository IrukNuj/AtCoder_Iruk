a = gets.to_i
b = Array.new
a.times do
  b.push(gets.split.map(&:to_i))
end
p b
tmp = Array.new

