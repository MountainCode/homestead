module Homestead
  class Agent < ActiveRecord::Base
    has_and_belongs_to_many :listings

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
