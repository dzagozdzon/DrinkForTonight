# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ingredients/index.html.erb', type: :view do
  it 'displays all drinks' do
    assign(:ingredients, [
      stub_model(Ingredient, :name => 'uno'),
      stub_model(Ingredient, :name => 'duo')
    ])

    render

    expect(rendered).to match /uno/
    expect(rendered).to match /duo/
  end
end
