class CreateAirportTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :airport_types do |t|
      t.string :name
    end
  end
end
