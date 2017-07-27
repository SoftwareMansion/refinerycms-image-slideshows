module Refinery
  module ImageSlideshows
    class ImageSlide < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slides'

      translates :title, :caption, :link_url, :body

      acts_as_indexed :fields => [:title]

      validates :title, :presence => true
      validates :image_id, :presence => true

      belongs_to :image_slideshow
      belongs_to :image, :class_name => '::Refinery::Image'

      delegate :height, :width, :to => :image_slideshow

      scope :between_date, ->() { where("start_at <= ? AND end_at >= ?", Date.today, Date.today) }
      scope :start_date, ->() { where("start_at <= ? AND end_at IS NULL", Date.today) }
      scope :end_date, ->() { where("end_at >= ? AND start_at IS NULL", Date.today) }
      scope :without_date, ->() { where(start_at: nil, end_at: nil) }

      def self.active
        between_date +
        without_date +
        start_date +
        end_date
      end
    end
  end
end
