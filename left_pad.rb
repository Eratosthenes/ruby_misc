def left_pad(str, width, ch=' ')
  ch*(width-str.length)+str
end

puts left_pad("hello", 10)
puts left_pad("hello", 10, '*')
puts left_pad("1", 2, "0")
