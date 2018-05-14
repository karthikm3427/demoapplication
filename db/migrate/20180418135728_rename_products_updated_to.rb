class RenameProductsUpdatedTo < ActiveRecord::Migration
  def change
    rename_table :products_updated, :products
  end
end
