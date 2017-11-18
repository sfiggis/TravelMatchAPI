class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.string :name
      t.references :codeable, polymorphic: true, index: true
    end
  end
end
