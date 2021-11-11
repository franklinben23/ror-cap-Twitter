require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:tweets) }
    it { should have_many(:followers) }
    it { should have_one_attached(:photo) }
    it { should have_one_attached(:coverimage) }
    it { should have_many(:followees) }
    it { should have_many(:followers) }
  end
  describe 'validations' do
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username) }
    it { should validate_presence_of(:fullname) }
    it { should validate_presence_of(:email) }
  end
end
