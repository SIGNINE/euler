#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000. 

def multiples_of num, max
  i = 0
  mul = []
  
  mul << num*i and i +=1 while num*i < max

  mul
end


def sum_of_multiples num1, num2, max 
  muls = multiples_of(num1, max) | multiples_of(num2, max)

  muls.inject(:+)
end


puts sum_of_multiples 3, 5, 1000
