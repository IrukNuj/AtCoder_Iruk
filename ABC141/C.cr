n, k, q = read_line.split.map(&.to_i)
points = Array.new(n, k)
a = [] of Int32
ans = [] of Int32
q.times {a << read_line.to_i}
a.each do |a|
    points[a-1] += 1 
end

points.each do |p|
    puts p > q ? "Yes" : "No"
end
