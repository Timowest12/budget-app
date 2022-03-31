require 'rails_helper'

RSpec.describe 'groups index page', type: :feature do
  before do
    visit '/users/sign_in'
    @user = User.create!(email: 'user@email.com', Name: 'User Name', password: '123456', id: 1)
    @user.save

    fill_in 'Email', with: 'user@email.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    click_on 'Add Category'
    fill_in 'Name', with: 'Category1'
    fill_in 'Image Link', with: 'https://googleimage.com'
    click_on 'Create Category'
    click_on 'Category1'
  end

  it 'has add expense button' do
    expect(page).to have_content 'Add Expense'
  end

  it 'can create new expense' do
    click_on 'Add Expense'
    fill_in 'Name', with: 'Spending1'
    fill_in 'Amount', with: 10
    click_on 'Add Expense'
    expect(page).to have_content 'Spending1'
  end
end
