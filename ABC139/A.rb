a = gets.chomp
b = gets.chomp
times = 0
3.times do |x|
    times += 1 if a[x] == b[x]
end
puts times