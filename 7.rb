=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

def is_even? num
  !(num & 1)
end

def is_prime? num
  return true if num == 2
  return false if num < 2 || is_even?(num)

  limit = (Math.sqrt(num)).round.to_i
  (3..limit).each { |i| return false if num % i == 0 }

  true
end

def ith_prime i
  return 1 if i == 1
  j  = 1
  primes = 1

  while primes < i
    j += 2
    primes += 1 if is_prime? j
  end

  j
end

puts ith_prime 10001
