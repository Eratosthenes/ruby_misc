#given an array and a number n, find the soonest that the array goes from 1 to n

def soln(n, array)
  s = [] #s for set
  steps = 0
  array.each_with_index do |el, i|
    if s[i].nil? && el.between?(1,n)
      s[i] = el 
      steps += 1
      return i if steps == n
    end
  end
  -1
end

A=[1,3,1,4,2,3,5,4]
puts soln(5, A)

B=([*1..10000]*10).shuffle
puts soln(1000, B)
