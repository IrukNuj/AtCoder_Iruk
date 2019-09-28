require 'prime'
a, b = gets.split.map(&:to_i)
def div(x, y)
  x % y == 0 ? y : div(y, x % y)
end
max_common_divisor = div([a, b].max, [a, b].min)
max_common_divisor == 1 ? puts(1) : puts(Prime.prime_division(max_common_divisor).flatten.uniq.count)