require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  match = AnagramsAntigrams.new
  @anagrams = params.fetch('anagrams')
  erb(:output)
end
