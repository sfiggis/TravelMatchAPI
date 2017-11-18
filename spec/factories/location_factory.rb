FactoryBot.define do
  factory :location do
    sequence(:name) { |n| "location #{n}" }
    association(:location_type, orphanable: true)
  end
end