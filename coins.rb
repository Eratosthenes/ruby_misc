# given coins with certain values
# what is the min number of coins needed for sum S?

# recursion with memoization
$coins = [1,3,5]
$memo = []
def min_coins(sum)
  return 0 if sum<=0
  return $memo[sum] if $memo[sum]
  r = []
  $coins.each do |coin|
    r << 1 + min_coins(sum-coin)
  end
  r = r.min
  $memo[sum] = r
  puts "min_coins(#{sum}) = #{r}"
  r
end

puts min_coins(11)

# dynamic programming
def min_coins_dp(sum)
  dp = []
  dp[0] = 0
  [*1..sum].each do |i|
    r = []
    $coins.each do |coin|
      if dp[i-coin]
	r << 1 + dp[i-coin]
      else
	r << 1
      end
    end
    dp[i] = r.min
    puts "dp[#{i}] = #{dp[i]}"
  end  
  dp[sum]
end

puts min_coins_dp(11)
