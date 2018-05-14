class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :city

      t.timestamps
    end
  end
end
