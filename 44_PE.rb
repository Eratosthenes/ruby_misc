def PE44(hash_size)
    pent = ->(n){n*(3*n-1)/2}
    h = Hash[*([*1..hash_size]*2).sort.map{|x| pent.call(x)}]
    h.keys.permutation(2).to_a.map{|x| [x.reduce(:+), x.reduce(:-).abs]}
    .map{|x,y| [h[x],h[y]]}.select{|x| x[0]!=nil && x[1]!=nil}
end

p PE44(ARGV.first.to_i)
