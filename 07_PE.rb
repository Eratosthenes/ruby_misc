def nth_prime(n)
    #won't work for n=2
    is_prime = ->(n){[*2..Math.sqrt(n)+1].map{|x| n%x}.include?(0)==false}
    count=1
    i=3
    while count < n
        if is_prime.call(i)==true
            count+=1
        end
        i+=1
    end
    i-1
end

#p [*1..ARGV.first.to_i].map{|x| nth_prime(x)}
p nth_prime(ARGV.first.to_i)
