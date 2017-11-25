class CreateJourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :journeys do |t|
      t.datetime :departure_date
      t.datetime :return_date
      t.references :origin
      t.references :destination
    end

    add_foreign_key :journeys, :locations, column: :origin_id, primary_key: :id
    add_foreign_key :journeys, :locations, column: :destination_id, primary_key: :id
  end
end
