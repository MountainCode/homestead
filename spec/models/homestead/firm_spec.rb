require 'spec_helper'

module Homestead
  describe Firm do
    subject { FactoryGirl.create :firm }

    it 'has an office' do
      expect(subject.offices.count).to eq(1)
    end

    it 'has two agents' do
      expect(subject.agents.count).to eq(2)
    end

    it 'has three listings' do
      expect(subject.listings.count).to eq(3)
    end
  end
end
