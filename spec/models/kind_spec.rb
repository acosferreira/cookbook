require 'rails_helper'

RSpec.describe Kind, type: :model do
  describe 'Kind flow' do
    context '.validate' do
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:name) }
    end
    context '.create' do
      it { expect { described_class.create(name: 'desert') }.to change(described_class, :count) }
    end
    context '.error' do
      before do
        described_class.create(name: 'breakfast')
      end
      it { expect { described_class.create(name: nil) }.not_to change(described_class, :count) }
      it { expect { described_class.create(name: 'breakfast')}.not_to change(described_class, :count) }
    end
  end
end
