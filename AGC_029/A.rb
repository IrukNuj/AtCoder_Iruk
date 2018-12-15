def BW_reverse(a, count)
  (0..(a.length-2-count/2)).reverse_each do |i|
    if a[i] + a[i+1] == "BW"
      tmp = a[i]
      a[i] = a[i+1]
      a[i+1] = tmp
      count = count + 1
      return BW_reverse(a, count)
    end
  end
  return count
end

a = gets.chomp.split("").map(&:to_s)
count = 0

puts BW_reverse(a, count)
