def BW_reverse(a, length)
  (0..(length-@count/2)).reverse_each do |i|
    if a[i] == "B" && a[i+1] == "W"
      a[i], a[i+1] = a[i+1], a[i]
      @count = @count + 1
      return BW_reverse(a, length)
    end
  end
end

a = gets.chomp.split("").map(&:to_s)
length = a.length - 2
@count = 0

BW_reverse(a, length)
puts @count
