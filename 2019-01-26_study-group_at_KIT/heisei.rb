a, b, c = gets.split.map(&:to_i)

case
when a.between?(1990, 2018)
  puts "Yes"
when a == 1989
  puts (b == 1 && c <= 7) ? "No" : "Yes"
when a == 2019
  puts b <= 4 ? "Yes" : "No"
else
  puts "No"
end