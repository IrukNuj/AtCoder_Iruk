require 'prime'

list = []
n = gets.to_i.prime_division
n.each do |factor|
    factor.last.times do
      list << factor.first
    end
end

while(list.length > 2) do
  p list
    max = list.max
    min = list.min
    list.append(max*min)
    list.delete_at(list.find_index(max))
    list.delete_at(list.find_index(min))
end

list.append(1) if list.length == 1
p (list.first + list.last - 2)