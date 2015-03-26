require 'rails_helper'


describe 'the add a city process' do
  # let(:user) { FactoryGirl.create(:user) }
  #
  # before do
  #   sign_in(user)
  # end

  it 'adds a new city' do
    FactoryGirl.create(:user)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Add new city"
    fill_in "City", with: "Spokane"
    fill_in "State", with: "Washington"
    click_on "Create City"
    expect(page).to have_content "successfully"
  end

  it 'throws an error if city field is left blank' do
    FactoryGirl.create(:user)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Add new city"
    fill_in "State", with: "Washington"
    click_on "Create City"
    expect(page).to have_content "fix these errors"
  end

  it 'throws an error if state field is left blank' do
    FactoryGirl.create(:user)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Add new city"
    fill_in "City", with: "Eureka"
    click_on "Create City"
    expect(page).to have_content "fix these errors"
  end
end

describe 'the delete a city process' do
  it 'destroys a city' do
    FactoryGirl.create(:user)
    FactoryGirl.create(:city)
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "bob@robert.com"
    fill_in "Password", with: "1234dcba"
    click_on "Log in"
    click_on "Godzilla It"
    expect(page).to have_content "will not rebuild"
  end
end
