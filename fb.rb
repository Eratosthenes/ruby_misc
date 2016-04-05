# fizz buzz

def fizzbuzz(n)
  [*1..n].each do |i|
    non_mult = true
    if i%3==0
      print 'Fizz'
      non_mult = false
    end
    if i%5==0
      print 'Buzz'
      non_mult = false
    end
    print i if non_mult
    puts
  end
end

fizzbuzz(20)
