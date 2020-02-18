class CreateParts < ActiveRecord::Migration[5.2]
  def up
    create_table :parts do |t|
      t.string :sku
      t.string :description
      t.integer :on_hand, default: 0

      t.timestamps
    end
  end

  def down
    drop_table :parts
  end
end
