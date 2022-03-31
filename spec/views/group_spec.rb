require 'rails_helper'

RSpec.describe 'groups index page', type: :feature do
  before do
    visit '/users/sign_in'

    @user = User.create!(email: 'user@email.com', Name: 'User Name', password: '123456', id: 1)
    @user.save

    fill_in 'Email', with: 'user@email.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end
  it 'can log in' do
    expect(page).to have_content 'Category'
  end

  it 'Login succesfully' do
    expect(page).to have_current_path('/')
  end

  it 'can add category' do
    click_on 'Add Category'

    expect(page).to have_content 'Add Category'
  end

  it 'can add category' do
    click_on 'Add Category'
    fill_in 'Name', with: 'Category1'
    fill_in 'Image Link', with: 'https://googleimage.com'
    click_on 'Create Category'
    expect(page).to have_content 'Category1'
  end
end