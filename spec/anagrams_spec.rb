require('rspec')
require('./lib/anagrams')

describe('AnagramsAntigrams#is_valid?') do
  let(:match) { AnagramsAntigrams.new }

  it("returns falsey if something other than letters are input") do
    expect(match.is_valid?("h3110")).to be_falsey
  end
  it("returns truthy if letters are input") do
    expect(match.is_valid?("hello")).to be_truthy
  end
end

describe('AnagramsAntigrams#match_characters') do
  let(:match) { AnagramsAntigrams.new }

  it ("returns lowercase for AnaGrams") do
    expect(match.match_characters("AnaGrams")).to(eq("anagrams"))
  end

  it ("returns lowercase for ANAGRAMS") do
    expect(match.match_characters("ANAGRAMS")).to(eq("anagrams"))
  end
end

describe('AnagramsAntigrams#words_anagrams') do
  let(:match) { AnagramsAntigrams.new }

  it ("returns anagrams for 'tea' and 'eat'") do
    expect(match.words_anagrams('tea', 'eat')).to(eq("anagrams"))
  end

  it ("returns not anagrams for 'tea' and 'iuw'") do
    expect(match.words_anagrams('tea', 'iuw')).to(eq("not anagrams"))
  end
  it ("returns anagrams for 'ih' and 'hi'") do
    expect(match.words_anagrams('ih', 'hi')).to(eq("anagrams"))
  end
  it ("returns anagrams for 'Dome' and 'demo'") do
    expect(match.words_anagrams('Dome', 'demo')).to(eq("anagrams"))
  end
  it ("returns anagrams for 'DomE' and 'deMO'") do
    expect(match.words_anagrams('DomE', 'deMO')).to(eq("anagrams"))
  end
end
