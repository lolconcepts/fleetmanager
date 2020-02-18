class CreateVendors < ActiveRecord::Migration[5.2]
  def up
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :telephone
      t.string :email
      t.string :sales_rep
      t.string :account_no
      t.string :active, default: true

      t.timestamps
    end
    Vendor.create(:name => "CarQuest")
    Vendor.create(:name => "Motorcraft")
    Vendor.create(:name => "MWRTA")
    Vendor.create(:name => "My Airbags")
    Vendor.create(:name => "Napa")

  end
  def down
    drop_table :vendors
  end
end
