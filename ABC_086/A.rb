a, b = gets.split.map(&:to_i)
result = (a * b).odd? ? 'Odd' : 'Even'
puts result
