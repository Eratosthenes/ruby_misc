#fibonacci with memoization
$memo=[0, 1]
def fib_1(n)
    return n if n<2
    $memo[n] = fibonacci(n-1) + fibonacci(n-2)
    $memo[n]
end

#fibonacci with dynamic programming
def fib_2(n)
  dp=[0,1]
  return dp[n] if n<2
  [*2..n].each do |i|
    dp[i] = dp[i-1]+dp[i-2]  
  end
  dp[n]
end  

#print the fibonacci numbers up to a given number
def fib_3(max_n)
  dp=[0,1]
  return dp[max_n] if max_n<2
  i=2
  while dp.last < max_n
    dp[i]=dp[i-1]+dp[i-2]
    i+=1
  end
  dp[0...-1]
end

p fib_3(20)

#check whether a number is a fibonacci number
$fib_h = Hash.new{|h,k| h[k]=h[k-1]+h[k-2]}
$fib_h[0] = 0; $fib_h[1] = 1 
def is_fibonacci?(n)
  $fib_h[n]
  !!$fib_h.invert[n]
end

loop do
  puts "Enter a number to check:"
  n = gets.chomp.to_i
  puts "#{n}: #{is_fibonacci?(n)}"
end


