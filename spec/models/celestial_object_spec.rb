require 'rails_helper'

RSpec.describe CelestialObject, type: :model do
  let(:mars) { CelestialObject.create(name: 'EARTH', description: 'the 3rd planet') }
  it 'should downcase name' do
    expect(mars.name).to eq('EARTH'.downcase)
  end
end
