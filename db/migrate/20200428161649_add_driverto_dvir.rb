class AddDrivertoDvir < ActiveRecord::Migration[5.2]
  def change
  	add_column :dvirs, :driver, :integer
  end
end
