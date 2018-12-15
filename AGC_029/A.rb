def BW_reverse(a, length, count)
  (0..(length-2-count/2)).reverse_each do |i|
    if a[i] == "B" && a[i+1] == "W"
      a[i], a[i+1] = a[i+1], a[i]
      count = count + 1
      return BW_reverse(a, length, count)
    end
  end
  return count
end

a = gets.chomp.split("").map(&:to_s)
length = a.length
count = 0

puts BW_reverse(a, length, count)
