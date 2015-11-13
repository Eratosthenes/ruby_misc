def PE493()
    sum=ntrials=0
    old_avg,new_avg=0,1
    until old_avg == new_avg
        old_avg = (sum/ntrials.to_f).to_s[0..11]
        sum+=([*1..7]*10).sample(20).uniq.length
        ntrials+=1
        new_avg = (sum/ntrials.to_f).to_s[0..11]
    end
    new_avg
end

p PE493()
