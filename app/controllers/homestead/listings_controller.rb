module Homestead
  class ListingsController < ApplicationController
    def index
      # @listings = office.listings
      @q = Listing.search(params[:q])
      @listings = ListingDecorator.decorate_collection @q.result
    end
    def search
      @q = Listing.search(params[:q])
    end
  end
end
