=begin
  Problem: A small frog wants to get from position 0 to k (1 <= k <= 10,000). The frog can
  jump over any one of n fixed distances s0, s1, . . . , sn−1 (1 <= si <= k). The goal is to count the
  number of different ways in which the frog can jump to position k. To avoid overflow, it is
  sufficient to return the result modulo q, where q is a given number.
=end

# dynamic programming
def frog(dists, k, q)
  dp = [1]+[0]*k
  [*1..k].each do |i|
    dists.each do |dist|
      dp[i] = (dp[i] + dp[i-dist]) % q if i >= dist
    end
    puts "dp[#{i}] = #{dp[i]}"
  end
  dp[k]
end

puts frog([1,3,5], 10, 10)

# memoization
$memo=[1]
def frog_2(dists, k, q)
  return 1 if k==0
  return $memo[k] if $memo[k]
  count = 0 
  dists.each do |dist|
    count += frog_2(dists, k-dist, q) % q if k >= dist
  end
  $memo[k] = count
  puts "k=#{k}: count = #{count}"
  $memo[k]
end

puts frog_2([1,3,5], 10, 10)

