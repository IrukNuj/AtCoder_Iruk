a = gets.chomp
max_length, current_length = 0, 0
acgt = 'ACGT'
a.each_char do |c|
  acgt.include?(c) ? current_length += 1 : current_length = 0
  max_length = current_length if current_length > max_length
end
puts max_length