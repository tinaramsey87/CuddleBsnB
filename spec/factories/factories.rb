FactoryGirl.define do
  factory :user do
    username("bob")
    email("bob@robert.com")
    password("1234dcba")
    password_confirmation("1234dcba")
    admin(true)
  end

  factory :city do
    city("Virginia Beach")
    state("Virginia")
  end

end
