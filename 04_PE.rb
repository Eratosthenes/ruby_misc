pals = ->(n1,n2) {[*n1..n2].map{|x| ([x]*(n2-n1+1)).zip([*n1..n2])}
            .flatten(1)
            .map{|x| x.reduce(:*)}
            .select{|x| x.to_s.reverse.to_i ==x}}

p pals.call(100,999).max
