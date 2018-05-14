class RenameNameToFullnameInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :name, :full_name
  end
end
