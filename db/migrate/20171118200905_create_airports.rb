class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :airport_type, foreign_key: true
      t.float :longitude
      t.float :latitide
      t.boolean :scheduled_service
      t.float :elevation
      t.string :wiki
      t.float :elevation
    end
  end
end
