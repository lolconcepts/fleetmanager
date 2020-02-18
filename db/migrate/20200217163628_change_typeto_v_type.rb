class ChangeTypetoVType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :vehicles, :type, :vtype
  end
end
