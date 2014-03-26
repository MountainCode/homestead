module Homestead
  class ListingPhoto < ActiveRecord::Base
    belongs_to :listing
    has_attached_file :image, styles: {medium: '300x300>'}, default_url: '/assets/homestead/image_not_found.png'
    validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']

    def name
      image_file_name
    end
  end

end
