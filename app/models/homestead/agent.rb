module Homestead
  class Agent < ActiveRecord::Base
    has_and_belongs_to_many :listings
    belongs_to :office
    belongs_to :status, class_name: AgentStatus

    has_attached_file :photo, styles: {medium: '300x300>'}, default_url: '/assets/homestead/image_not_found.png'

    validates_attachment_content_type :photo, content_type: ['image/jpg', 'image/jpeg', 'image/png']

    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :status

    after_initialize do
      if new_record?
        self.status = AgentStatus.where(code: 'A').first
      end
    end

    def to_s
      name
    end

    def name
      "#{first_name} #{last_name}"
    end
  end
end
