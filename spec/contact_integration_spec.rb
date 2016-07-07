require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('route path / index page', {:type => :feature}) do
  it('displays the index page  when user goes to / in browser') do
    visit('/')
    expect(page).to have_content('Contact List')
  end
  
end
