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
