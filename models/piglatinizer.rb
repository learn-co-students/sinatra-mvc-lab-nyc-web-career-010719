class PigLatinizer

  def piglatinize(word)
    # new_word = word
    word = word.split(' ')
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    # if !word.strip.include?(" ")
    #   word.each do |word|
    #   if vowels.include?(word[0])
    #     new_word = word + "way"
    #   elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
    #     new_word = word.slice(3,word.length) + word.slice(0,3) + "ay"
    #   elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
    #     new_word = word.slice(2,word.length) + word.slice(0,2) + "ay"
    #   elsif !vowels.include?(word[0]) && vowels.include?(word[1])
    #     new_word = word.slice(1,word.length) + word.slice(0,1) + "ay"
    #   end
    # end
    # new_word
    # else
       # word.split
       word_array = []
       word.each do |word|
      if vowels.include?(word[0])
        new_word = word + "way"
        word_array << new_word
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
        new_word = word.slice(3,word.length) + word.slice(0,3) + "ay"
        word_array << new_word
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        new_word = word.slice(2,word.length) + word.slice(0,2) + "ay"
        word_array << new_word
      elsif !vowels.include?(word[0]) && vowels.include?(word[1])
        new_word = word.slice(1,word.length) + word.slice(0,1) + "ay"
        word_array << new_word
    end
  end
  word_array.join(" ")
end

end
