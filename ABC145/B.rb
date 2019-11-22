n = gets.to_i
s = gets.to_s

puts s[0..n/2-1] == s[n/2..n-1] && (s.size - 1).to_i.even? ? 'Yes' : 'No'