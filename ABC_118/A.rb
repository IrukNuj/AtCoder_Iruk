a, b = gets.split.map(&:to_i)
b % a == 0 ? print(a + b) : print(b - a)
