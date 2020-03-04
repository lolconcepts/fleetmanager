class CreateDvirs < ActiveRecord::Migration[5.2]
  def up
    create_table :dvirs do |t|
      t.references :company, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.integer :odometer
      t.integer :end_mileage
      t.integer :start_mileage
      t.string :location

      t.timestamps
    end
  end
  def down
    drop_table :dvirs
  end
end
