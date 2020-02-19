class AddCategoryToPart < ActiveRecord::Migration[5.2]
  def up
    add_column :parts, :category, :string
  end
  def down
  	remove_column :parts, :category
  end
end
