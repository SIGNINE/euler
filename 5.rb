=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

def smallest_multiple limit
  num = limit 
  (2..limit-1).each { |i| num = num * i if num % i != 0 }
  
  num
end

puts smallest_multiple 10 
