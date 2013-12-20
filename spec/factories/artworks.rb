# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    date_created Date.today
    date_listed Date.today

    medium
    artist
    collection
    customer
  end
end
