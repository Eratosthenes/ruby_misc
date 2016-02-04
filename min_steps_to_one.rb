# start with n
# either subtract 1, divide by 2, or divide by 3 (if divisible)
# determine the minimum number of steps to reach 1

def timer(f)
  t1 = Time.now
  puts f
  t2 = Time.now
  "Time: #{t2-t1}"
end

# top-down recursion with memoization
$memo = []
def min_steps(n)
  return 0 if n==1
  return $memo[n] if $memo[n]
  r = 1 + min_steps(n-1)
  r = [r, 1 + min_steps(n/2)].min if n%2==0
  r = [r, 1 + min_steps(n/3)].min if n%3==0
  $memo[n] = r
  #puts "min_steps(#{n}): #{r}"
  r
end

# bottom-up approach with dynamic programming
def min_steps_dp(n)
  dp=[]
  dp[1]=0
  [*2..n].each do |i|
    dp[i] = 1 + dp[i-1]  
    dp[i] = [dp[i], 1 + dp[i/2]].min if i%2==0
    dp[i] = [dp[i], 1 + dp[i/3]].min if i%3==0
    #puts "dp[#{i}] = #{dp[i]}"
  end
  dp[n]
end

#puts timer min_steps(1000)
puts timer min_steps_dp(100000)

#notes: memoization causes stack overflow at 10000, while dp keeps going and going
#	dp also runs faster than memoization anyway, probably because it doesn't 
#	need to make any function calls
