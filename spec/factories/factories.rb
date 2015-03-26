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

  factory :listing do
    name("44 Cherry Lane")
    zip(23452)
    price(100.00)
    city
  end

end
