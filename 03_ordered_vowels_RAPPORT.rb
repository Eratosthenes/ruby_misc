# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5
def ordered_vowel_words(str)
    words = str.split(" ")
    res = []
    for word in words
        vowels = word.split(//).select{|x| ["a","e","i","o","u"].include?(x)}
        res << word if vowels.sort == vowels
    end
    return res.join(" ")
end

puts ordered_vowel_words("amends") == "amends"
puts ordered_vowel_words("complicated") == ""
puts ordered_vowel_words("afoot") == "afoot"
puts ordered_vowel_words("ham") == "ham"
puts ordered_vowel_words("crypt") == "crypt"
puts ordered_vowel_words("o") == "o"
puts ordered_vowel_words("tamely") == "tamely"
phrase = "this is a test of the vowel ordering system"
result = "this is a test of the system"
puts ordered_vowel_words(phrase) == result

