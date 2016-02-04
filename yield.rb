def wrap &b
  print 'santa says: '
  3.times{yield 'ho! '}
  print "\n"
end
wrap{|x| print x}

