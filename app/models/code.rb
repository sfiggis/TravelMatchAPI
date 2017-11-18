class Code < ApplicationRecord
  belongs_to :codeable, polymorphic: true
end