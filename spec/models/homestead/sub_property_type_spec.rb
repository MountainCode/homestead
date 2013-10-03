require 'spec_helper'

module Homestead
  describe SubPropertyType do
    before(:each) do
      SubPropertyType.where(code: 'B').destroy_all
      PropertyType.where(code: 'B').destroy_all
    end
    subject { SubPropertyType.create(code: 'B', name: 'Houseboat', property_type: houseboat) }

    let(:houseboat) { PropertyType.where(code: 'B').first || PropertyType.create(code: 'B', name: 'Houseboat') }

    its(:property_type) { should be houseboat }

    context 'when property type is deleted' do
      it 'is deleted' do
        houseboat.destroy!
        expect(SubPropertyType.where(code: 'B').first).to be_nil
      end
    end
  end
end
