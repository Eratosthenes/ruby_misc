def fib(max)
    arr=[0,1]
    while arr[-1] < max
        arr << arr[-2..-1].reduce(:+)
    end
    arr[0..-2]
end

p fib(ARGV.first.to_i).select{|x| x%2==0}.reduce(:+)
