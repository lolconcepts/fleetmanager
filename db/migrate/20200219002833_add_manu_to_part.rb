class AddManuToPart < ActiveRecord::Migration[5.2]
  def up
    add_column :parts, :part_manufacturer_name, :string
    add_column :parts, :manufacturer_part_number, :string
  end
  def down
  	remove_column :parts, :part_manufacturer_name
  	remove_column :parts, :manufacturer_part_number
  end
end
