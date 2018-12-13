a = gets.to_i
b = gets.to_s
count_max = 0

for i in (0..a)
  count = 0
  s1 = b[0..i]
  s2 = b[i+1..a]
  uniq_s1 = s1.split("").uniq
  uniq_s1.each do |s|
    count = count + 1 if s2.include?(s)
  end
  count_max = count if count_max < count
end
puts count_max