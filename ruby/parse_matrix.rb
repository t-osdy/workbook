require 'matrix'

def parse_matrix(src)
  matrix = []
  src.each do |line|
    line.chomp!
    next if line.empty?
    matrix.push line.split(/\s+/).map{|x| x.to_i }
  end
  Matrix.rows(matrix)
end

m = parse_matrix(ARGF.read)
puts m.transpose.to_a.map{|v| v.join(" ") }
