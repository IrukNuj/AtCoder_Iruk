ans = [] of Int32
(1..9).each do |n|
    (1..9).each do |m|
       ans << n*m 
    end
end

puts ans.includes?(read_line.to_i) ? "Yes" : "No"