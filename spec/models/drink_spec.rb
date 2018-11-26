# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Drink, type: :model do
  subject(:drink) { Drink.create(name: 'some', name: 'test') }

  context '#associations' do
    it { is_expected.to have_and_belong_to_many(:ingredients)}
    it { is_expected.to belong_to(:user)}
    it { is_expected.to belong_to(:category)}
  end

  context '#nested attributes' do
    it { should accept_nested_attributes_for(:ingredients)}
  end

  context '#validation' do
    it { is_expected.to validate_presence_of(:name)}
  end
end 
