class String

  def answer(input)
    results = []
    input1 = self.match_characters.is_valid?
    input2 = input.match_characters.is_valid?
    if (input1.real_word? && input2.real_word?)
      if (input1.anagram?(input2))
        results.push('anagrams')
        if (input1.palindromes?(input2))
          results.push('palindromes')
        end
      end
      if (input1.antigram?(input2))
        results.push('antigrams')
      end
    else
      results.push('enter real words')
    end
    results
  end

  def is_valid?
    self.gsub(/[^a-zA-Z]/, '')
  end

  def real_word?
    vowels = ['a', 'e', 'i', 'o', 'u']
    (self.split('') & vowels).any?
  end

  def match_characters
    self.downcase
  end


  def anagram?(str_one)
    self.split('').sort == str_one.split('').sort
  end

  def palindromes?(str_one)
    self.split('').reverse == str_one.split('')
  end

  def antigram?(str_one)
    (self.split('') & str_one.split('')).empty?
  end

end
