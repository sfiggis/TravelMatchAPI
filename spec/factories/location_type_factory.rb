FactoryBot.define do
  factory :location_type do
    sequence(:name) { |n| "location_type #{n}" }
    orphanable true
  end
end
