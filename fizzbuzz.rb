n = 0

fizzbuzz = -> {
  n += 1
  puts n % 15 == 0 ? 'FizzBuzz'
    :  n %  3 == 0 ? 'Fizz'
    :  n %  5 == 0 ? 'Buzz'
    :  n
  n < 100 ? fizzbuzz[] : nil
}

fizzbuzz[]
