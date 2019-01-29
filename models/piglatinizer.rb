class PigLatinizer


  def piglatinize(string)
    if string.split(" ").length == 1
      piglatinize_word(string)
    else
      piglatinize_sentence(string)
    end
  end


  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        "#{word[3..-1]}#{word[0..2]}ay"
    elsif consonant?(word[0]) && consonant?(word[1])
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif consonant?(word[0])
      "#{word[1..-1]}#{word[0]}ay"
    else
     "#{word}way"
    end
  end

  def piglatinize_sentence(sentence)
    original_words = sentence.split(" ")
    changed_words = original_words.map do |word|
      piglatinize_word(word)
    end
    sentence = changed_words.join(" ")
  end


end
