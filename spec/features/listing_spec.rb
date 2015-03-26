require 'rails_helper'

describe 'the add a listing process' do
  it 'adds a new listing' do
    FactoryGirl.create(:user)
    FactoryGirl.create(:city)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Virginia Beach"
    click_on "Add new listing"
    fill_in "Name", with: "dirty shack"
    fill_in "Zip", with: 00666
    fill_in "Price", with: 35.00
    click_on "Create Listing"
    expect(page).to have_content "successfully"
  end
end
