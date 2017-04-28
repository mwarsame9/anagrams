require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  @input1 = params.fetch('input1')
  @input2 = params.fetch('input2')
  @results = @input1.answer(@input2)
  erb(:output)
end
