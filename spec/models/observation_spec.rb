require 'rails_helper'

RSpec.describe Observation, type: :model do
  context 'created with hunted object' do
    let!(:observation) { create(:observation, :with_hunted_object) }
    subject { observation }
    it 'should have a hunted_object' do
      expect(subject.hunted_objects.count).to eq(1)
    end
    it 'should have a hunted_object.name' do
      expect(subject.hunted_objects.first.name).to eq('jupiter')
    end
  end

  context 'created with found object' do
    let!(:observation) { create(:observation, :with_found_object) }
    subject { observation }
    it 'should have a found_object' do
      expect(subject.found_objects.count).to eq(1)
    end
    it 'should have a found_object.name' do
      expect(subject.found_objects.first.name).to eq('jupiter')
    end
  end

  context 'with hunted object added after creation' do
    let!(:observation) { create(:observation) }
    subject { observation }
    before(:each) { observation.hunted_objects_list = 'Jupiter' }
    it 'should have a hunted_object' do
      expect(subject.hunted_objects.count).to eq(1)
    end
    it 'should have a hunted_object.name' do
      expect(subject.hunted_objects.first.name).to eq('jupiter')
    end
  end

  context 'with found object added after creation' do
    let!(:observation) { create(:observation) }
    subject { observation }
    before(:each) { observation.found_objects_list = 'Jupiter' }
    it 'should have a found_object' do
      expect(subject.found_objects.count).to eq(1)
    end
    it 'should have a found_object.name' do
      expect(subject.found_objects.first.name).to eq('jupiter')
    end
  end
end
