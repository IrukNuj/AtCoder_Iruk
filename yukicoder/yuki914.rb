n, m, k = gets.split.map(&:to_i)
b = []
n.times do
  b << gets.split.map(&:to_i)
end

memo = [[0]]
b.each do |n|
  memo.last.uniq!
  tmp = []
  m.times do |m|
    memo.each do |price|
      sum = price + b[n][m]
      tmp << sum if sum <= k
    end
  end
  memo << tmp
end

p memo

memo.each {|n| memo.delete(n) if n.empty?}
p memo.count == n ?  k - memo.last.max : -1
