module Homestead
  class ListingPhoto < ActiveRecord::Base
    belongs_to :listing
    has_attached_file :image, styles: {medium: '300x300>'}, default_url: '/assets/homestead/image_not_found.png'
    def name
      image_file_name
    end
  end

end
