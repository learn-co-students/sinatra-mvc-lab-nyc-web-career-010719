class PigLatinizer

  def piglatinize(words)

    word_array = words.split(" ").map do |word|
      if word.start_with?('a','e','i','o','u', 'A', 'E', 'I', 'O', 'U')
        "#{word}way"
      else
        parts = word.split(/([aeiou].*)/)
        "#{parts[1]}#{parts[0]}ay"
      end
    end.join(" ")
  end

end #end of class PigLatinizer
