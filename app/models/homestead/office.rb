module Homestead
  class Office < ActiveRecord::Base
    validates_presence_of :status

    has_many :agents
    has_many :listings, through: :agents
    belongs_to :status, class_name: OfficeStatus
    belongs_to :address
    belongs_to :firm

    after_initialize do
      if new_record?
        self.status = OfficeStatus.where(name: 'Active').first
      end
    end
  end
end
