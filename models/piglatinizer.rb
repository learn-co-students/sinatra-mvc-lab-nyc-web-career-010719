require_relative '../app.rb'

class PigLatinizer

  def initialize
  end

  def piglatinize(full_text)
    consonants = /[bcdfghjklmnpqrstvwxyz]/i
    vowels = /[aeiou]/i

    full_text = full_text.split(" ")
    full_text.map do |text|

      l1 = text[0]
      l2 = text[1]
      l3 = text[2]
      rest = text[3..text.length]

      if l1 =~ vowels
        "#{l1}#{l2}#{l3}#{rest}way"
      elsif l1 =~ consonants && l2 =~ consonants && l3 =~ consonants
        "#{rest}#{l1}#{l2}#{l3}ay"
      elsif l1 =~ consonants && l2 =~ consonants
        "#{l3}#{rest}#{l1}#{l2}ay"
      else
        "#{l2}#{l3}#{rest}#{l1}ay"
      end
    end.join(" ")
  end

end
