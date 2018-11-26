# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) {FactoryBot.create(:user)}
 
  context '#association' do
    it { is_expected.to have_many(:drinks)}
  end

  context '#factory' do
    it 'has a valid factory' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end

  context '#validations' do
    context 'validates user attributes presence' do
      it {is_expected.to validate_presence_of(:email)}
      it {is_expected.to validate_presence_of(:password)}
    end

    context 'is valid with all user params provided' do
      it {expect(user).to be_valid }
    end

    context 'with improper validations user setup' do 
      let(:user_without_email) { User.new }
      it 'is not valid without email' do
        expect(user_without_email).not_to be_valid
      end
    end

    context 'length of user password' do
      it {should validate_length_of(:password).is_at_least(5)}
    end
  end
end
