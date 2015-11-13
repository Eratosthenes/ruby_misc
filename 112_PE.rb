def PE112(p)
    bouncy=->(n){n.to_s.split(//)!=n.to_s.split(//).sort && 
                 n.to_s.split(//)!=n.to_s.split(//).sort.reverse}
    prop, nbouncy, n = 0, 0, 1
    until prop == p
        if bouncy.call(n) 
            nbouncy+=1
        end
        prop = nbouncy/n.to_f
        n+=1
    end
    n-1
end

p PE112(ARGV.first.to_f)
