class AddColumnPasswordConfirmationToCreators < ActiveRecord::Migration
  def change
    add_column :creators, :password_confirmation, :string
  end
end
