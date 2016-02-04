def convert_to_binary(n)
  res = [] 
  bit = 0
  while n > 0
    bit = n % 2
    res.push(bit) 
    n = (n - bit)/2
  end
  res.reverse.join()
end

p convert_to_binary(23)
p convert_to_binary(8)
