# frozen_string_literal: true
require 'active_record/fixtures'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Ingredient.create([
  { name: 'Ice' },
  { name: 'Lemon' },
  { name: 'Tabasco' },
  { name: 'Water' },
  { name: 'Mint' },
  { name: 'Lime' },
  { name: 'Sugar' }
])

Category.create([
  { name: 'Rum' },
  { name: 'Vodka' },
  { name: 'Whisk(e)y' },
  { name: 'Tequila' },
  { name: 'Wine' }
])