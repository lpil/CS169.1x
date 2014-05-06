def sum(array)
  total = 0
  array.each do |x|
    total += x
  end
  total
end

def max_2_sum(arr)
  arr.sort.last(2).reduce(:+).to_i
end

def sum_to_n?(array, n)
  !! array.combination(2).to_a.find { |e| e[0] + e[1] == n }
end
