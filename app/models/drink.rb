# frozen_string_literal: true

class Drink < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_and_belongs_to_many :ingredients
  accepts_nested_attributes_for :ingredients
end
