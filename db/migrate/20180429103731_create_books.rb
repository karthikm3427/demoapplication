class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :rating
      t.string :year

      t.timestamps
    end
  end
end
