module Homestead
  class ApplicationController < ActionController::Base
    def office
      Office.where(name: 'Mary Mitchell Miller Real Estate').first
    end
  end
end
