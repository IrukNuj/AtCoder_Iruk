require 'complex'
a = gets.to_i
b = Array.new
a.times do
  b.push(gets.split.map(&:to_i))
end

p b.sort_by!{|b| b[0].to_i + b[1].to_i}

numbers = [1, 2, 3, 4]
numbers.repeated_permutation(4) {|a, b, c, d| p "[#{a}, #{b}, #{c}, #{d}]" }