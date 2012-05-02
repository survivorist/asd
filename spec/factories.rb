FactoryGirl.define do
  factory :user do
    name "John Joe"
    email "jon@joes.com"
    password "foobar"
    password_confirmation "foobar"
  end
end