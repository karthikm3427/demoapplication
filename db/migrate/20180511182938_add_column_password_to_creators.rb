class AddColumnPasswordToCreators < ActiveRecord::Migration
  def change
    add_column :creators, :password, :string
  end
end
