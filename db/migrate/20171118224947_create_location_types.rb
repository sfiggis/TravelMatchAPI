class CreateLocationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :location_types do |t|
      t.string :name
      t.boolean :orphanable
    end
  end
end
