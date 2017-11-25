require 'rails_helper'

RSpec.describe Journey, type: :model do
  it { should belong_to(:origin) }
  it { should belong_to(:destination) }
end
