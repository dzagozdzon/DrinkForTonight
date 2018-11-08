# frozen_string_literal: true

class Drink < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_and_belongs_to_many :ingredients
  accepts_nested_attributes_for :ingredients
  has_attached_file :image, styles: { large: "x250"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
