class AddDurationToImageSlideshows < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :duration, :integer
  end
end
