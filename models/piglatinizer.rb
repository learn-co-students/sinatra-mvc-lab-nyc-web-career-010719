require 'pry'

class PigLatinizer
  attr_accessor :word

  def starts_with_vowel(char)
    ['a','e','i','o','u'].include?(char.downcase)
  end

  def piglatinize(user_input)
    if user_input.split(" ").length == 1
      piglatinizer(user_input)
    else
      user_input.split.map do |word|
        piglatinizer(word)
      end.join(" ")
    end
  end

  def piglatinizer(word)
    if starts_with_vowel(word[0])
      word += 'w'
    elsif !starts_with_vowel(word[0]) && !starts_with_vowel(word[1]) && !starts_with_vowel(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif !starts_with_vowel(word[0]) && !starts_with_vowel(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word += 'ay'
    word
  end
end

# binding.pry
#
# "hello"
