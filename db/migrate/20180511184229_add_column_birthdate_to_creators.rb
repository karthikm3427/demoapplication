class AddColumnBirthdateToCreators < ActiveRecord::Migration
  def change
    add_column :creators, :birthdate, :date
  end
end
