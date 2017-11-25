class Journey < ApplicationRecord
  belongs_to :origin, class_name: 'Location'
  belongs_to :destination, class_name: 'Location', required: false
end
