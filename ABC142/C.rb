a = gets.to_i
b = gets.split.map(&:to_i)
hash = {}
a.times do |a|
  hash[a] = b[a]
end

hash = hash.sort_by{ |_, value| value}
hash.each_with_index do |h, i|
  print "#{(h[0] + 1).to_s.chomp}"
  print " "if i != hash.size-1
end