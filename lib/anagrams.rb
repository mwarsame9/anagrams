class AnagramsAntigrams

  def is_valid?(user_input)
    user_input.match(/\A[a-z]+\z/)
  end

  def match_characters(user_input)
    user_input.downcase
  end


  # def get_anagrams(str_one, str_two)
  #   counts_one = Hash.new(0)
  #   counts_two = Hash.new(0)
  #
  #   str_one.each_char do |letter|
  #     counts_one = counts_one += 1
  #   end
  #
  #   str_two.each_char do |letter|
  #     counts_two = counts_two += 1
  #   end
  #
  #   if (counts_one == counts_two)
  #     return true
  #   else
  #     return false
  #   end
  # end

  def get_anagrams(str_one, str_two)
    array_one = str_one.downcase.split
    array_two = str_two.downcase.split

    new_array_one = array_one.sort
    new_array_two = array_two.sort

    if (new_array_one.to_s == new_array_one.to_s)
      return "anagrams"
    else
      return false
    end
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

  # def get_anagrams(user_input)
  #   detector = anagram.new('tea')
  #   anagrams = detector.match(['tea', 'eat', 'ate', 'eet'])
  #   assert_equal ['tea', 'eat'], anagrams
  #   p detector
  # end
  # words = %w[]
  # anagrams = words.group_by { |word| word.chars.sort }.values
  # words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  #         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  #         'flow', 'neon']


  # def word_check(user_input)
  #   result = {}
  #   words = user_input
  #   words.each do |word|
  #     key = word.downcase.split('').sort.join
  #     if result.has_key?(key)
  #       print "anagrams"
  #     else
  #       result[key] = "anagrams"
  #     end
  #   end
  #
  #   # result.each do |k, v|
  #   #   # puts "------"
  #   #   p k
  #   # end
  # end


end
