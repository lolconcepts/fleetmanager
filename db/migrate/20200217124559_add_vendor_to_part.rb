class AddVendorToPart < ActiveRecord::Migration[5.2]
  def up
    add_reference :parts, :vendor, foreign_key: true
  end
  def down
  	remove_reference :parts, :vendor
  end
end
