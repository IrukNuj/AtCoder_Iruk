a = gets.chomp
max_length = 0
a_arr = []
current = 0

a_arr << current

a.chars do |c|
  if c == "A"
    current = current + 1
    a_arr << current
  end

  if c == "B"
    current = current - 1
    a_arr << current
  end
end

a_arr_reverse = a_arr.reverse

(a_arr.min..a_arr.max).each do |i|
  next if a_arr.count(i) <= 0
  tmp_max_length = a_arr.length - a_arr.index(i) - a_arr_reverse.index(i) - 1
  max_length = tmp_max_length if tmp_max_length >= max_length
end

print max_length