class AddConditionToDvir < ActiveRecord::Migration[5.2]
  def up
    add_reference :dvirs, :condition, foreign_key: true
  end
  def down 
  	remove_reference :dvirs, :condition
  end
end
