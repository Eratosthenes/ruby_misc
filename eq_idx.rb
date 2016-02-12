# find the equilibrium indices of an array
# this is an O(n) soln, although it uses an extra loop (or two)
def solution(a)
    lower_sums = [0]
    upper_sums = [a.reduce(:+)]

    # fill lower sums
    [*1...a.length].each do |i|
      lower_sums[i] = lower_sums[i-1]+a[i-1]
      upper_sums[i] = upper_sums[i-1]-a[i-1]
    end
    upper_sums = upper_sums.drop(1).push(0)

    a.each_with_index do |el, i|
      return i if lower_sums[i] == upper_sums[i]
    end

    #puts "lower sums:"
    #p lower_sums
    #puts "upper sums:"
    #p upper_sums

    -1
end

#puts "array:"
#p [-1, 3, -4, 5, 1, -6, 2, 1]

puts solution([-1, 3, -4, 5, 1, -6, 2, 1])
