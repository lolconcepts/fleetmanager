class RemoveSigFromDvir < ActiveRecord::Migration[5.2]
  def change
  	remove_column :dvirs, :sig
  end
end
