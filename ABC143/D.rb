_ = gets.to_i
b = gets.split.map(&:to_i)
b.sort!
p b
ans = 0
b.each_with_index do |b1, i|

  (b.length-i).times do |n|
    break unless b[i+1+n]
    print b1, b[i+n+1]
    puts
    p b.bsearch_index{|x| x > (b1+b[i+n+1])}

    ans += b.bsearch_index{|x| x > (b1+b[i+n+1])}? b.bsearch_index{|x| x > (b1+b[i+n+1])} - (i+n+1) - 2 : b.length - (i+n+1) - 1
    p ans
  end
end
puts ans
