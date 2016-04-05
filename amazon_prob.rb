# makes assumptions about the smallest unit of time you care about (minutes),
# but the lines of the file don't have to be in chronological order
# first column is start time, second col is number of minutes
contents = File.readlines(ARGV.first).map{|x| x.chomp.split(',').map{|x| x.to_i}}
array_size = contents.last.first
array = [0]*array_size
contents.each do |t_start, t_duration|
  t_end = t_start + t_duration
  array[t_start..t_end].each_with_index do |el, i|
    array[t_start+i] += 1  
  end
end
p array
p array.max
