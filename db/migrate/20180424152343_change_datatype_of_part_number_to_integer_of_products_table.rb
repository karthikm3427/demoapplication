class ChangeDatatypeOfPartNumberToIntegerOfProductsTable < ActiveRecord::Migration
  def change
    change_column :products, :part_number, :integer
  end
end
