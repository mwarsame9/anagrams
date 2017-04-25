# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the anagrams path', {:type => :feature}) do
#   it('checks for words to see if they are anagrams') do
#     visit('/')
#     fill_in('anagrams', :with => ('tea not' 'eat ton'))
#     click_button('Submit')
#     expect(page).to have_content("anagrams")
#   end
# end
