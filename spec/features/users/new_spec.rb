require 'rails_helper'

RSpec.describe 'User registration form', type: :feature do
  describe 'As a visitor' do
    before(:each) do
      @username = 'testuser'
      @password = 'password'
    end

    it 'I see a button to sign up and can create a new user' do
      visit root_path

      click_on 'Sign Up'

      expect(current_path).to eq(new_user_path)
      
      fill_in :username, with: @username
      fill_in :password, with: @password

      click_on 'Create Account'

      expect(page).to have_content("Welcome, #{@username}")
    end

    it 'keeps a user logged in after registering' do
      visit root_path

      click_on 'Sign Up'

      fill_in :username, with: @username
      fill_in :password, with: @password

      click_on 'Create Account'

      visit '/profile'
    end
  end
end
