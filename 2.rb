=begin
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=end

def fibonacci_sum max
  return if max < 2 

  nums = [1, 2]
  sum = 0
  
  # Append the new value and remove the first value, so array size is always 2
  while nums.last < max
    sum += nums.last if nums.last % 2 == 0
    nums << nums[1] + nums[0]
    nums.shift
  end

  sum
end


puts fibonacci_sum 4_000_000 
