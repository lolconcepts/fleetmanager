class AddCaptureImagesToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :capture_images, :boolean, default: true
  end
end
