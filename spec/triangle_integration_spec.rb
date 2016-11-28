require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('triangle app output path', {:type => :feature}) do
    it('output results from form and applied methods to the target output page') do
      visit('/')
      fill_in('side_1', :with => 5)
      fill_in('side_2', :with => 5)
      fill_in('side_3', :with => 5)
      click_button('Submit!')
      expect(page).to have_content("It's an equilateral triangle!")
    end
  end
