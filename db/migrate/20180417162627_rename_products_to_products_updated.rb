class RenameProductsToProductsUpdated < ActiveRecord::Migration
  def change
    rename_table :products, :products_updated
  end
end
