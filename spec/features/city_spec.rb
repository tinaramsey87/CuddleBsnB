require 'rails_helper'

describe 'the add a city process' do
  it 'adds a new city' do
    visit new_city_path
    fill_in "City", with: "Spokane"
    fill_in "State", with: "Washington"
    click_on "Create City"
    expect(page).to have_content "successfully"
  end

  it 'throws an error if city field is left blank' do
    visit new_city_path
    fill_in "State", with: "Washington"
    click_on "Create City"
    expect(page).to have_content "fix these errors"
  end

  it 'throws an error if state field is left blank' do
    visit new_city_path
    fill_in "City", with: "Eureka"
    click_on "Create City"
    expect(page).to have_content "fix these errors"
  end
end
