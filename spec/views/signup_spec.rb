require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  describe 'login' do
    before(:each) do
      visit '/users/sign_up'
    end

    it 'can enter a name and receive a greeting' do
      visit new_user_registration_path
      expect(page).to have_content 'Sign up'
    end

  end
end