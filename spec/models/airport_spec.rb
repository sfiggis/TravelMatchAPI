require 'rails_helper'

RSpec.describe Airport, type: :model do
  it { should belong_to(:location) }
  it { should validate_presence_of(:name) }
  it { should have_many(:codes) }
end
