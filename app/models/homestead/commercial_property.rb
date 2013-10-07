module Homestead
  class CommercialProperty < ActiveRecord::Base

    def name
      "#{city}, #{state}"
    end
  end
end
