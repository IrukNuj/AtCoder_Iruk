a, _ = gets.chomp.split.map(&:to_i)
like_count = []
a.times do
  like_count.push(gets.chomp.split.map(&:to_i))
end

matched_list = like_count.first[1..-1]
like_count.each do |l|
  matched_list.each do |m|
    matched_list.delete(m) unless l[1..-1].include?(m)
  end
end

print matched_list.count
