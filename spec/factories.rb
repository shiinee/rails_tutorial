FactoryGirl.define do
  factory :user do
    name "Some User"
    email "user@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
