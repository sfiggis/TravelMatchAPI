class Tag < ApplicationRecord
  belongs_to :tagable, polymorphic: true

  validates_presence_of :name
end
