class AddGdppppToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :gdp_ppp, :float
  end
end
