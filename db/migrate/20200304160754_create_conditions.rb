class CreateConditions < ActiveRecord::Migration[5.2]
  def up
    create_table :conditions do |t|
      t.string :description

      t.timestamps
    end
    Condition.create(:description =>"Satisfactory")
    Condition.create(:description => "Un-Satisfactory")
  end
  def down
  	drop_table :conditions
  end
end
