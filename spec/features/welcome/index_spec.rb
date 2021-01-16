require 'rails_helper'

RSpec.describe 'welcome index', type: :feature do
  describe 'as a visitor' do
    let!(:user) { User.create(username: 'phil', password: 'password') }
    
    it 'can log in with valid credentials' do
      visit root_path

      click_on 'Log In'
      expect(current_path).to eq(new_session_path)

      within('#login-form') do
        fill_in 'session[username]', with: user.username
        fill_in 'session[password]', with: user.password
        click_on 'Log In'
      end

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Logged in as #{user.username}!")
      expect(page).to have_content('Logout')
      expect(page).to_not have_link('Sign Up')
      expect(page).to_not have_link('Log In')
    end

    it 'cant login with invalid credentials' do
      visit root_path

      click_on 'Log In'
      
      within('#login-form') do
        fill_in 'session[username]', with: user.username
        fill_in 'session[password]', with: 'wrong password'
        click_on 'Log In'
      end

      expect(current_path).to eq(new_session_path)
      expect(page).to have_content("Username or password doesn't match our records.")
    end
  end
end
