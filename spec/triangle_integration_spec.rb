require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path for triangle program', {:type=> :feature}) do
  it('allows user to input 3 sides of triangle and returns type of triangle') do
    visit('/')
    fill_in('side1', :with=> '5')
    fill_in('side2', :with=> '5')
    fill_in('side3', :with=> '5')
    click_button('Triangulate it!')
    expect(page).to have_content("This is an equilateral triangle.")
  end
end
