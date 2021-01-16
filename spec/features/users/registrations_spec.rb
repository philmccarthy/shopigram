require 'rails_helper'

RSpec.describe 'User registration form', type: :feature do
  describe 'As a visitor' do
    before(:each) do

    end

    it 'I see a button to sign up and can create a new user' do
      visit root_path

      click_on 'Sign Up'

      expect(current_path).to eq(new_user_path)
      
      username = 'testuser'
      fill_in :username, with: username
      fill_in :password, with: 'password'

      click_on 'Create Account'

      expect(page).to have_content("Welcome, #{username}")
    end
  end
end
