def fizzbuzz(n)
  [*1..n].each do |i|
    case
    when i%3==0 && i%5==0
      puts "FizzBuzz"
    when i%3==0
      puts "Fizz"
    when i%5==0
      puts "Buzz"
    else
      puts i
    end
  end
end

fizzbuzz(30)
