class AnagramsAntigrams

  def is_valid?(user_input)
    user_input.match(/\A[a-z]+\z/)
  end

  def match_characters(user_input)
    user_input.downcase
  end

  # def get_anagrams(user_input)
  #   a = ["cat"]
  #   b = ["tac"]
  #   if a.chars.sort.join == b.chars.sort.join
  #    "anagrams"
  #   else
  #     "not anagrams"
  #   end
  # end




end
