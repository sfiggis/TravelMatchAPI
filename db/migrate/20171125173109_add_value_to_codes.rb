class AddValueToCodes < ActiveRecord::Migration[5.1]
  def change
    add_column :codes, :value, :string
  end
end
