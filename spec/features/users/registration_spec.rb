require 'rails_helper'

RSpec.describe 'user registration page', type: :feature do
  describe 'As a visitor' do
    it 'I can register to become a user' do
      visit '/register'
      expect(page).to have_link('Register')

      name = 'Graham Thompson'
      address = '123 Test Dr'
      city = 'Denver'
      state = 'Colorado'
      zip = '80128'
      email = 'gthompson@example.com'
      password = 'password'

      fill_in :name, with: name
      fill_in :address, with: address
      fill_in :city, with: city
      fill_in :state, with: state
      fill_in :zip, with: zip
      fill_in :email, with: email
      fill_in :password, with: password
      fill_in :password_confirmation, with: password

      click_button 'Submit'

      expect(current_path).to eq('/profile')
      expect(page).to have_content('You have successfully registered and are now logged in.')

    end
  end
end
