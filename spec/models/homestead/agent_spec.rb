require 'spec_helper'

module Homestead
  describe Agent do
    subject { FactoryGirl.create agent_factory }
    let(:agent_factory) { :agent }

    it 'has listings' do
      expect(subject.listings.count).to eq(1)
    end

    context 'agent_with_two_listings' do
      let(:agent_factory) { :jackson_agent }

      it 'has two listings' do
        expect(subject.listings.count).to eq(2)
      end
    end
  end
end
