# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  context '#associations' do
    it {is_expected.to have_many(:drinks)}
  end

  context '#validation' do
    it { is_expected.to validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(3)}
  end

  context 'default scope' do
    let!(:category_one) { Category.create(name: 'Abab') }
    let!(:category_two) { Category.create(name: 'Zyzy') }

    it 'orders by ascending name' do
      Category.all.should eq [category_one, category_two]
    end
  end
end
