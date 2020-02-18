class CreateLineItems < ActiveRecord::Migration[5.2]
  def up
    create_table :line_items do |t|
      t.references :workorder, foreign_key: true
      t.references :part, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
  def down
  	drop_table :line_items
  end
end
