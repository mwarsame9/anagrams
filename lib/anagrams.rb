class String

  def answer(str_one)
    result = []
    word_1 = self.strip
    word_2 = str_one.strip
    if (word_1.real_word && word_2.real_word)
      if (word_1.words_anagrams(word_2))
        result.push('anagrams')
        if (word_1.palindromes?(word_2))
          result.push('palindromes')
        end
      end
      if (word_1.antigram(word_2))
        result.push('antigrams')
      end
    else
      result.push('not real words')
    end
    result
  end

  def is_valid?(user_input)
    user_input.match(/\A[a-z]+\z/)
  end

  def real_word(user_input)
    user_input.match(/[aeiouy]+/i)
  end

  def match_characters(user_input)
    user_input.downcase
  end


  def words_anagrams(str_one)

    if self.downcase.split('').sort == str_one.downcase.split('').sort
      result = "anagrams"
    else
      result = "not anagrams"
    end
  end

  def palindromes?(str_one)

    if self.downcase.reverse == str_one.downcase
      "palindromes"
    else
      "not palindromes"
    end
  end
  def antigram?(str_one)
    if (self.split('') & str_one.split('')).empty?
      "antigrams"
    else
      "not antigrams"
    end
  end


end
