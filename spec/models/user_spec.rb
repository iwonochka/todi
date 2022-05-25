require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(password: "123456",
                        email: "charlotte@gmail.com")
  end

  describe 'associations' do
    it { should have_one_attached(:photo) }
    it { should have_many(:user_tags) }
    it { should have_many(:tags).through(:user_tags) }
    it { should have_many(:participants) }
    it { should have_many(:events).through(:participants) }
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }
  end

  it "is not valid without an e-mail" do
    expect(subject).to be_valid
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    expect(subject).to be_valid
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
