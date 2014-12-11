=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

def lcm n1, n2
  min = [n1, n2].min
  max = [n1, n2].max

  (2..min).each do |i|
    p = max * i
    return p if p % min == 0
  end
end

def smallest_multiple limit
  num = 2 
  (2..limit-1).each { |i| num = lcm(num, i)  if num % i != 0 }
  
  num
end

puts smallest_multiple 20
