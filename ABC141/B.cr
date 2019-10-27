s = gets.to_s
odd_pattern = ["R", "U", "D"]
even_pattern = ["L", "U", "D"]
frag = false
s.each_char.with_index do |s, i|
    s = s.to_s
    if i.even?
        frag = true unless odd_pattern.includes?(s)
    else
        frag = true unless even_pattern.includes?(s)
    end
    break if frag
end
puts frag ? "No" : "Yes"