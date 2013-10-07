module Homestead
  class ListingsController < ApplicationController
    def index
      # @listings = office.listings
      @listings = ListingDecorator.decorate_collection @q.result
    end
    def search
      @q = Listing.search(params[:q])
    end
    def show
      @listing = ListingDecorator.decorate Listing.find(params[:id])
    end
  end
end
