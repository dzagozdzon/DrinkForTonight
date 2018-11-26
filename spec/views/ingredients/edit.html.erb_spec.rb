# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ingredients/edit.html.erb', type: :view do
  it 'renders form' do
    assign(:ingredient, Ingredient.create(name: 'sth'))

    render

    expect(rendered).to match(/<form/)
  end
end
