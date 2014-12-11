=begin
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end


def sum_square_difference limit
  square_sum = 0
  sum_square = 0

  (1..limit).each { |i| square_sum += i and sum_square += i*i }

  square_sum *= square_sum

  if square_sum > sum_square
    square_sum - sum_square
  else
    sum_square - square_sum
  end
end

puts sum_square_difference 100
