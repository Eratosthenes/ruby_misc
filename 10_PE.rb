def primes_below(n)
    mult_count = lambda {|n,i| [*1..n/i].map{|z| z*i}} 
    res=[*2..n]
    for i in [*2..Math.sqrt(n)]
        res -= mult_count.call(n,i)[1..-1]
    end
    res
end

p primes_below(ARGV.first.to_i).reduce(:+)
