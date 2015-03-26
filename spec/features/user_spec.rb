require 'rails_helper'


describe 'the sign up process' do
  it 'signs a new user up' do
    visit new_user_registration_path
    fill_in "Email", with: "HumptyDance@yourchance.com"
    fill_in "Username", with: "DigitalU"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    expect(page).to have_content "successfully"
  end
end

describe 'the sign in a user process' do
  it 'signs in a user' do
    FactoryGirl.create(:user)
    visit cities_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    expect(page).to have_content "successfully"
  end
end

describe 'the sign out a user process' do
  it 'signs out a user' do
    FactoryGirl.create(:user)
    visit cities_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Sign Out"
    expect(page).to have_content "successfully"
  end
end
