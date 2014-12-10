=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def is_even? num
  num % 2 == 0
end

def get_factors num
  return [] if num < 0 
  factors = [1]
  factors << num if num > 1

  return factors.sort if num < 4

  i = is_even?(num) ? 2 : 3
  limit = num / 2

  while i < limit
    if num % i == 0
      factors << i
      factors << num / i
      limit = num / i
    end

    i += 2
  end

  factors.sort
end

def is_prime? num
  get_factors(num).length <= 2
end

def prime_factors num
  factors = get_factors num
  factors.select { |f| is_prime?(f) }
end

factors = prime_factors 600_851_475_143
puts factors
