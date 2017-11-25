class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :family_name
      t.references :location, foreign_key: true
      t.string :email
    end
  end
end
