class AddTypeToRefineryImageSlideshows < ActiveRecord::Migration
  def change
    add_column :refinery_image_slideshows, :slideshow_type, :string
  end
end
