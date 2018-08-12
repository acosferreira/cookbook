require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'Recipe flow' do
    context '.validate' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:how_to_do) }
      it { should validate_presence_of(:ingredients) }
    end
    context '.create' do
      let(:milk) { FactoryGirl.create(:ingredient) }
      let(:desert) { FactoryGirl.create(:kind) }
      it { expect {
        described_class.create(name: 'mash',
                               how_to_do: 'cook the milk for 5 min',
                               kind: desert,
                               ingredients: [ milk ]) }.to change(described_class, :count) }
    end
    context '.format_duration' do
      let(:milk) { FactoryGirl.create(:ingredient) }
      let(:corn) { FactoryGirl.create(:ingredient) }
      let(:desert) { FactoryGirl.create(:kind) }
      let(:mash) { described_class.create(name: 'mash',
                               how_to_do: 'cook the milk for 5 min',
                               kind: desert,
                               ingredients: [ milk ]) }
     let(:corn_flakes) { described_class.create(name: 'corn_flakes',
                              how_to_do: 'mix corn and milk',
                              kind: desert,
                              duration: 45.minutes.from_now,
                              ingredients: [ milk, corn ]) }
      it { expect {mash.format_duration.to eq('not defined') } }
      it { expect {corn_flakes.format_duration.to eq('0:45') } }
    end
    context '.error' do
      it { expect { described_class.create(name: nil) }.not_to change(described_class, :count) }
      it { expect { described_class.create(how_to_do: nil) }.not_to change(described_class, :count) }
      it { expect { described_class.create(ingredients: []) }.not_to change(described_class, :count) }
    end
  end
end
