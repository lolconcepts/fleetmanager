class AddCostToPart < ActiveRecord::Migration[5.2]
  def up
    add_column :parts, :cost, :string, default: "0"
  end
  def down
  	remove_column :parts, :cost
  end
end
