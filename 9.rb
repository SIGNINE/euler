def find_sqr_sums limit
  sqrs = (1..limit).map { |i| i*i }

  (0...sqrs.length).each do |i|
    (i...sqrs.length).each do |j|
      c2 = sqrs[i] + sqrs[j]
      if sqrs.include? c2 
        a = Math.sqrt(sqrs[i]).to_i
        b = Math.sqrt(sqrs[j]).to_i
        c = Math.sqrt(c2).to_i

        return a, b, c if (a + b + c) == 1000
      end
    end
  end
end


puts find_sqr_sums 1000
