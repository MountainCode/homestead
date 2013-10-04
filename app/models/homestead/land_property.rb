module Homestead
  class LandProperty < ActiveRecord::Base
    validates_presence_of :lot_size

    def name
      "#{lot_size} acres"
    end
  end
end
