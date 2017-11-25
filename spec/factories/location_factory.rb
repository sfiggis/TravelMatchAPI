FactoryBot.define do
  factory :location do
    sequence(:name) { |n| "location #{n}" }
    sequence(:gdp_ppp) { |n| n * 8.2 }
    association(:location_type, orphanable: true)
  end
end
