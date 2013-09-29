require 'spec_helper'

module Homestead
  describe Office do
    subject { FactoryGirl.create :office }

    it 'has agents' do
      expect(subject.agents.count).to eq(2)
    end
    it 'has an agent named Chris' do
      expect(subject.agents.map(&:first_name)).to include('Chris')
    end

    it 'has three listings' do
      expect(subject.listings.count).to eq(3)
    end
  end
end
