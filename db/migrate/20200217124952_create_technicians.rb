class CreateTechnicians < ActiveRecord::Migration[5.2]
  def up
    create_table :technicians do |t|
      t.string :fname
      t.string :lname
      t.string :avatar
      t.boolean :active, default: true

      t.timestamps
    end
  end
  def down
  	drop_table :technicians
  end
end
