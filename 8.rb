=begin
The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.

Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?
=end
num = 
"73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450"

$largest = 1
$l_start = 1
$l_finish = 1

def numstr_to_array str
  a = []
  str.each_char { |c| a << c.to_i unless c == ' ' }

  a
end

def find_nonzero_range num_arry, size
  ranges = []

  start = 0
  finish = 0

  while finish < num_arry.length
    if num_arry[finish] == 0
      if (finish - size - start) >= size
        ranges << [start, finish - size]
      end
      finish += size
      start = finish
    else
      finish += 1
    end
  end

  ranges
end

def cmp_to_largest product, start, finish
  if product > $largest
    $largest = product
    $l_start = start
    $l_finish = finish
  end
end

num_a = numstr_to_array num

ranges = find_nonzero_range num_a, 13

ranges.each do |r|
  start = r.first
  finish = start + 13 
  product = 1

  (1..13).each { |i| product *= num_a[start + i] }

  cmp_to_largest product, start, finish

  finish += 1 

  while finish <= r.last
    product /= num_a[start]
    product *= num_a[finish]

    start += 1
    cmp_to_largest product, start, finish

    finish +=1
  end
end

puts $largest
puts $l_start
puts $l_finish
