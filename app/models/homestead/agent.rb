module Homestead
  class Agent < ActiveRecord::Base
    has_and_belongs_to_many :listings
    belongs_to :office

    has_attached_file :photo, styles: {medium: '300x300>'}, default_url: '/assets/homestead/image_not_found.png'

    validates_presence_of :first_name
    validates_presence_of :last_name

    def to_s
      name
    end

    def name
      "#{first_name} #{last_name}"
    end
  end
end
