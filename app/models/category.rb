# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :drinks
  default_scope -> { order(name: :asc) }
  validates :name, presence: true,
                   length: { minimum: 3 }
end
