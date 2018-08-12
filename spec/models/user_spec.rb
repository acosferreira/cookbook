require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User flow' do
    context '.validate' do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password) }
    end
    context '.error' do
      it { expect { described_class.create(email: nil) }.not_to change(described_class, :count) }
      it { expect { described_class.create(password: nil) }.not_to change(described_class, :count) }
    end
  end
end
