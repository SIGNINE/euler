=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def split_num num
  # Iteratively divide num by 10 and extract decimal
  digits = []
  
  while num > 10
    num = num / 10.0
    digits << ((num - num.floor) * 10).round
    num = num.floor
  end

  digits << num

  digits.map { |d| d.to_i }.reverse
end

def is_pallindrome? num
  digits = split_num num
  i = 0
  j = digits.length - 1 

  while (i != j) || (i < j)
    return false if digits[i] != digits[j]
    
    i += 1
    j -= 1
  end

  true
end

def max_pallindrome min, max
  (min..max).reverse_each do |i|
    (min..i).reverse_each do |j|
      product = i * j
      return product if is_pallindrome? product
    end
  end
end

puts max_palindrome 100, 999 

