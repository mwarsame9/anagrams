require('rspec')
require('./lib/anagrams')

describe('String#is_valid?') do
  let(:match) { String.new }

  it("returns falsey if something other than letters are input") do
    expect(match.is_valid?("h3110")).to be_falsey
  end
  it("returns truthy if letters are input") do
    expect(match.is_valid?("hello")).to be_truthy
  end
end

describe('String#match_characters') do
  let(:match) { String.new }

  it ("returns lowercase for AnaGrams") do
    expect(match.match_characters("AnaGrams")).to(eq("anagrams"))
  end

  it ("returns lowercase for ANAGRAMS") do
    expect(match.match_characters("ANAGRAMS")).to(eq("anagrams"))
  end
end

describe('String#words_anagrams') do
  let(:match) { String.new }

  it ("returns anagrams for 'tea' and 'eat'") do
    expect('tea not'.words_anagrams('eat ton')).to(eq("anagrams"))
  end
  it ("returns anagrams for 'for example' and 'exemplar of'") do
    expect('for example'.words_anagrams('exemplar of')).to(eq("anagrams"))
  end
  it ("returns not anagrams for 'tea' and 'i uw'") do
    expect("tea".words_anagrams("iuw")).to(eq("not anagrams"))
  end
  it ("returns anagrams for 'eleven plus two' and 'hi'") do
    expect('eleven plus two'.words_anagrams('twelve plus one')).to(eq("anagrams"))
  end
  it ("returns anagrams for 'Dome' and 'demo'") do
    expect('Dome'.words_anagrams('demo')).to(eq("anagrams"))
  end
  it ("returns anagrams for 'DomE' and 'deMO'") do
    expect('DomE'.words_anagrams('deMO')).to(eq("anagrams"))
  end
end

describe('String#palindromes?') do
  let(:match) { String.new }

  it ("returns palindromes for 'spot' and 'tops'") do
    expect('spot'.palindromes?('tops')).to(eq("palindromes"))
  end
  it ("returns not palindromes for 'spot' and 'tops'") do
    expect('stop'.palindromes?('tops')).to(eq("not palindromes"))
  end
  it ("returns palindromes for 'sPot' and 'Tops'") do
    expect('spot'.palindromes?('tops')).to(eq("palindromes"))
  end
  it ("returns not palindromes for 'cinema' and 'iceman'") do
    expect('cinema'.palindromes?('ice man')).to(eq("not palindromes"))
  end
end

describe('String#real_word') do
  let(:match) { String.new }

  it("returns falsey if something other than letters are input") do
    expect(match.real_word("hhhmmm")).to be_falsey
  end
  it("returns falsey if something other than letters are input") do
    expect(match.real_word("hhhhh1")).to be_falsey
  end
  it("returns falsey if something other than letters are input") do
    expect(match.real_word("4758")).to be_falsey
  end
end

describe("String#antigram?") do
  it("returns true if two words are antigrams") do
    expect('home'.antigram?('ball')).to(eq("antigrams"))
  end
  it("returns false if two words are antigrams") do
    expect('home'.antigram?('phone')).to(eq("not antigrams"))
  end
end
