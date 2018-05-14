class AddColumnPasswordIntroductionToCreators < ActiveRecord::Migration
  def change
    add_column :creators, :introduction, :string
  end
end
