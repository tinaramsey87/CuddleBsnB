def sign_in(user)
  visit root_path
  click_on "Sign In"
  fill_in "Email", with: "bob@robert.com"
  fill_in "Password", with: "1234dcba"
  click_on "Log in"
end
