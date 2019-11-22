n = gets.to_i
nums = gets.split.map(&:to_i)
posi = 0
nega = 0
ans = 0

# p nums

nums.each_with_index do |num, i|
  nums[i] = num - i - 1
  if nums[i] < 0
    nega += 1
  elsif nums[i] > 0
    posi += 1
  end
end

# p nums

if posi != nega
  nums.sort!
  # p nums
  center = nums[n/2]
  nums.each_with_index do |num, i|
    nums[i] = num - center
  end
end

nums.each{|n| ans += n.abs }

p ans