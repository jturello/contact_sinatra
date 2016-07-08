require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('route path / index page', {:type => :feature}) do
  it('displays the index page  when user goes to / in browser') do
    visit('/')
    expect(page).to have_content('Contact List')
  end

  it('displays a contact on the index/Contact List page once contact is added') do
    visit('/')
    fill_in('first_name', :with => 'Jane')
    fill_in('last_name', :with => 'Doe')
    # fill_in('job_title', :with => 'teacher')
    # fill_in('company', :with => 'Epicodus')
    click_button('Add')
    expect(page).to have_content('Jane Doe')
  end
end
