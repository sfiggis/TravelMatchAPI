class Code < ApplicationRecord
  belongs_to :codeable, polymorphic: true

  validates_presence_of :name
  validates_presence_of :value
end
