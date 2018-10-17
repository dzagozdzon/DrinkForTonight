# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_and_belongs_to_many :drinks
  default_scope -> { order(name: :asc) }

  validates :name, presence: true,
                   length: { minimum: 3 }
end
