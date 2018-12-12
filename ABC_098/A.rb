a, b = gets.split.map(&:to_i)
add = a + b
sub = a - b
mul = a * b
puts([add, sub, mul].max)