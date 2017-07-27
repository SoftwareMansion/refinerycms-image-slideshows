class AddStartAtEndAtToImageSlideshows < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :start_at, :timestamp
    add_column :refinery_image_slides, :end_at, :timestamp
  end
end
