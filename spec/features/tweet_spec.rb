require 'rails_helper'
require 'capybara/rails'

RSpec.describe 'Create Opinion', type: :feature do
  let(:user) { User.create(fullname: 'Tester2', username: 'tester2', email: 'tester2@test.com', password: '12345678') }
  scenario 'Tweet with good inputs' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Tester2'
    fill_in 'Username', with: 'tester2'
    fill_in 'Email', with: 'tester2@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    visit '/tweets/new'
    fill_in 'opiniontext', with: 'Hello World!'
    click_on 'Create Tweet'
    sleep(2)
    expect(page).to have_content('Hello World!')
  end

  scenario 'Tweet with bad inputs' do
    visit '/users/sign_up'
    fill_in 'Fullname', with: 'Tester2'
    fill_in 'Username', with: 'tester2'
    fill_in 'Email', with: 'tester2@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    visit '/tweets/new'
    fill_in 'opiniontext', with: ''
    click_on 'Create Tweet'
    sleep(2)
    expect(page).not_to have_content('Hello World!')
  end
end
