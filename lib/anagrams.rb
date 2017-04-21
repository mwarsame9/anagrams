class AnagramsAntigrams

  def is_valid?(user_input)
    user_input.match(/\A[a-z]+\z/)
  end

  def match_characters(user_input)
    user_input.downcase
  end



  def words_anagrams(str_one, str_two)
    array_one = str_one.downcase.split('')
    array_two = str_two.downcase.split('')

    array_one = array_one.sort
    array_two = array_two.sort

    new_array_one = array_one.join
    new_array_two = array_two.join

    if (new_array_one == new_array_two)
      "anagrams"
    else
      "not anagrams"
    end
  end

  def palindromes?(str_one, str_two)
    new_str_one = str_one.downcase.reverse
    new_str_two = str_two.downcase

    if (new_str_one == new_str_two)
      "palindromes"
    else
      "not palindromes"
    end
  end






end
