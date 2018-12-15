a = gets.chomp
count = 0

a.length.times do
  (0..(a.length)).reverse_each do |i|
    if a[i] == "B" && a[i+1] == "W"
      a[i], a[i+1] = "W", "B"
      count += 1
    end
  end
end

puts count
