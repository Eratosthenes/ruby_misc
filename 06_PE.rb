fsum = ->(n){[*1..n].reduce(:+)**2-[*1..n].map{|x| x**2}.reduce(:+)}
p fsum.call(ARGV.first.to_i)
