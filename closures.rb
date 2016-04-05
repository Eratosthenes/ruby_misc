words = %w(red orange yellow green blue indigo violet)

# One way to build up a filter. Build your comparison
# function into a criterion function. Then curry a
# specific number into that criterion function.

longer_than = lambda {|len, str| str.length > len }
longer_than_5 = longer_than.curry[5]

p words.select &longer_than_5
# => ['orange', 'yellow', 'indigo', 'violet']

# More general way to build up a filter. Build
# a general comparison function. Curry in a
# comparator function (for example, the
# greater than function). Then curry in a number.
# This is a far more flexible way to do things.

compare_with = lambda {|f,len,s| s.length.send(f, len) }

shorter_than = compare_with.curry[:<]
longer_than = compare_with.curry[:>]

shorter_than_5 = shorter_than.curry[5]
longer_than_5 = longer_than.curry[5]

words.select &shorter_than_5
# => ['red', 'blue']

words.select &longer_than_5
# => ['orange', 'yellow', 'indigo', 'violet']
