class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :wiki
      t.references :location_type, foreign_key: true
      t.references :parent_location, index: true
      t.text :content
    end
  end
end
