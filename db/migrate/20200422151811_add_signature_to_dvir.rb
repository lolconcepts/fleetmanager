class AddSignatureToDvir < ActiveRecord::Migration[5.2]
  def change
  	add_column :dvirs, :signature, :string
  end
end
