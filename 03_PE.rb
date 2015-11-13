#runs in 38 s for n=2 million
def primes_below(n)
    mults = lambda {|n,i| [*1..n/i].map{|z| z*i}} 
    [*2..Math.sqrt(n)].inject([*2..n]){|x,y| x-mults.call(n,y)[1..-1]}
end
def primes_below2(n)
    [*2..n]-[*2..Math.sqrt(n)].inject([]){|x,y| x+[*1..n/y].map{|z| z*y}[1..-1]}
end

#p primes_below2(ARGV.first.to_i)
p primes_below2(ARGV.first.to_i).reduce(:+)
