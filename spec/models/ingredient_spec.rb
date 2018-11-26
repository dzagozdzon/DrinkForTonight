# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  context '#association' do
    it { is_expected.to have_and_belong_to_many(:drinks)}
  end

  context '#validation' do
    it { is_expected.to validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(3)}
  end

  context 'default scope' do
    let!(:ingredient_one) { Ingredient.create(name: 'Abc') }
    let!(:ingredient_two) { Ingredient.create(name: 'Xyz') }

    it 'orders by ascending name' do
      Ingredient.all.should eq [ingredient_one, ingredient_two]
    end
  end
end
