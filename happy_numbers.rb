class Integer

  def next_happy
    digits.map{|x| x**2}.reduce(:+)
  end

  # more "mathy" way of getting digits of number
  def digits
    n = self
    dig = []
    until n==0
      dig << n%10
      n = n/10
    end
    dig.reverse
  end

  # find longest happy sequence up to n
  def find_longest_happy
    best_n = longest_happy_length = 0
    [*1..self].each do |n|
      happy_length = 0
      until n==1 || n==4
	n = n.next_happy
	happy_length += 1
	if happy_length > longest_happy_length
	  longest_happy_length = happy_length 
	  best_n = n
	end
      end
    end
    [longest_happy_length, best_n]
  end

end

# some test code to examine happy sequences
# conclusion: if you reach 1 or 4, happy sequence terminates
[*1..30].each do |n|
  res = []
  20.times do |i| 
    break if n==1 or n==4
    n = n.next_happy
    res << n
  end
  puts "length: #{res.length}; #{res.join(' ')}"
end

p 1000.find_longest_happy
