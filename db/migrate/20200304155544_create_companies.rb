class CreateCompanies < ActiveRecord::Migration[5.2]
  def up
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :telephone
      t.string :website

      t.timestamps
    end
    Company.create(:name => "Metro West Regional Transit Authority",
    			   :address => "15 Blandin Ave",
    			   :city => "Framingham",
    			   :state => "MA",
    			   :zip => "01702",
    			   :telephone => "508-935-2222",
    			   :website => "www.mwrta.com")
  end
  def down
  	drop_table :companies
  end
end
