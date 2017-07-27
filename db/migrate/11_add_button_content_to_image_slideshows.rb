class AddButtonContentToImageSlideshows < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :button_content, :string
  end
end
