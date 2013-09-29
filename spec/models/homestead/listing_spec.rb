require 'spec_helper'

module Homestead
  describe Listing do
    subject { FactoryGirl.create :listing }

    its(:listing_number) { should_not be_nil }
    its(:address) { should_not be_nil}
  end
end
