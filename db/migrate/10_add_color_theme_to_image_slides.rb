class AddColorThemeToImageSlides < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :color_theme, :string
  end
end
