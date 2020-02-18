class CreateWorkorders < ActiveRecord::Migration[5.2]
  def up
    create_table :workorders do |t|
      t.references :vehicle, foreign_key: true
      t.references :technician, foreign_key: true
      t.string :description
      t.string :parts_subtotal
      t.string :labor_subtotal
      t.string :total
      t.string :vehicle_miles_in
      t.references :status, foreign_key: true
      t.datetime :work_start
      t.datetime :work_end

      t.timestamps
    end
  end
  def down
    drop_table :workorders
  end
end
