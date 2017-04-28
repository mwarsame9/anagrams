require('rspec')
require('./lib/anagrams')

describe('String#is_valid?') do
  it("gets rid of symbols and spaces") do
    expect("H3ll o".is_valid?).to(eq("Hllo"))
  end

  it("returns hello for 'hello'") do
    expect("hello".is_valid?).to(eq("hello"))
  end
end

describe('String#match_characters') do
  it("returns lowercase for AnaGrams") do
    expect("ANAGRAMS".match_characters).to(eq("anagrams"))
  end
end

describe('String#anagram?') do
  it ("returns true for 'tea' and 'eat'") do
    expect('tea not'.anagram?('eat ton')).to(eq(true))
  end

  it ("returns false for 'for examples' and 'exemplar of'") do
    expect('for examples'.anagram?('exemplar of')).to(eq(false))
  end

  it ("returns false for 'tea' and 'i uw'") do
    expect("tea".anagram?("iuw")).to(eq(false))
  end
  it ("returns true for 'eleven plus two' and 'twelve plus one'") do
    expect('eleven plus two'.anagram?('twelve plus one')).to(eq(true))
  end
end

describe('String#palindromes?') do
  it ("returns palindromes for 'spot' and 'tops'") do
    expect('spot'.palindromes?('tops')).to(eq(true))
  end
  it ("returns not palindromes for 'spot' and 'tops'") do
    expect('stop'.palindromes?('tops')).to(eq(false))
  end
  it ("returns palindromes for 'sPot' and 'Tops'") do
    expect('spot'.palindromes?('tops')).to(eq(true))
  end
  it ("returns not palindromes for 'cinema' and 'iceman'") do
    expect('cinema'.palindromes?('ice man')).to(eq(false))
  end
end

describe("String#antigram?") do
  it("returns true if two words are antigrams") do
    expect('home'.antigram?('ball')).to(eq(true))
  end
  it("returns false if two words are antigrams") do
    expect('home'.antigram?('phone')).to(eq(false))
  end
end

describe('String#real_word?') do
  it("returns false if words dont include a vowel") do
    expect("hhhmmm".real_word?).to(eq(false))
  end
  it("returns false if words dont include a vowel") do
    expect("4758".real_word?).to(eq(false))
  end
  it("returns true if a word with vowel is entered") do
    expect("ruby".real_word?).to(eq(true))
  end
end
describe("String#answer") do
  it("returns 'anagrams', and 'palindromes', for hello and olleh") do
    expect("hello".answer('olleh')).to(eq(['anagrams', 'palindromes']))
  end
end
