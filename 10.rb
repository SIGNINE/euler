
def is_prime? num
  return false if num == 1 || num % 2 == 0

  i = 3 
  limit = Math.sqrt(num)
  while i <= limit
    return false if num % i == 0
    i += 2
  end

  true
end

sum = 0
(3...2_000_000).step(2).each { |i| sum += 1 if is_prime?(i) }

puts sum
