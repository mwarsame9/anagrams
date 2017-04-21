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

describe('AnagramsAntigrams#get_anagrams') do
  let(:match) { AnagramsAntigrams.new }

  it ("returns words in order for AnaGrams") do
    expect(match.get_anagrams('tea', 'tea')).to(eq("anagrams"))
  end

  it ("returns words in order for AnaGrams") do
    expect(match.get_anagrams('tea', 'iuw')).to(eq(false))
  end

end
