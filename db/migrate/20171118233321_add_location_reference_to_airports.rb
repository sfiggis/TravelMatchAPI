class AddLocationReferenceToAirports < ActiveRecord::Migration[5.1]
  def change
    add_reference :airports, :location, index: true
  end
end
