require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'signing and logging in', type: :feature do
  scenario 'Signing in with correct credentials' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Foo Bar'
    fill_in 'Username', with: 'foo'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Log in'
    expect(page).to have_content 'Sign up'
  end
end
