require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  input1 = params.fetch(input1)
  input2 = params.fetch(input2)
  @anagrams = AnagramsAntigrams.new
  # @anagrams = params.fetch('anagrams')
  erb(:output)
end
