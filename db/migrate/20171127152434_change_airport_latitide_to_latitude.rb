class ChangeAirportLatitideToLatitude < ActiveRecord::Migration[5.1]
  def change
    remove_column :airports, :latitide
    add_column :airports, :latitude, :float
  end
end
