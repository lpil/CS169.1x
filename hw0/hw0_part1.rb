def sum(array)
  total = 0
  array.each do |x|
    total += x
  end
  total
end

def max_2_sum(arr)
  x = arr.sort.last(2)
  0 + x[0].to_i + x[1].to_i
end

def sum_to_n?(array, n)
  comb = array.combination(2).to_a
  comb.find { |e| e[0] + e[1] == n } ? true : false
end
