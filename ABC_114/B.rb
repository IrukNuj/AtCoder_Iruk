x = gets.to_s
length = x.length
minimum_num = 754
(0..length-3).each do |a|
  array_start = 0+a
  array_end = 2+a
  three_num = x[array_start..array_end].to_i
  caluculated_num = (three_num - 753).abs
  minimum_num = caluculated_num if minimum_num > caluculated_num
end

puts minimum_num
