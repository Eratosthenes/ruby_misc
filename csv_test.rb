require 'csv'

reviews = CSV.read('reviews.csv')
p reviews

class Array
  def avg
    reduce(:+)/length
  end
end

puts [2.6,3.6,3.6,3.1].avg

if __FILE__==$PROGRAM_NAME
  puts "hi"
end
