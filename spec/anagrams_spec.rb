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
