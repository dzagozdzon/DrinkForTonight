# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/index.html.erb', type: :view do
  it 'displays all drinks' do
    assign(:categories, [
      stub_model(Category, :name => 'uno'),
      stub_model(Category, :name => 'duo')
    ])

    render

    expect(rendered).to match /uno/
    expect(rendered).to match /duo/
  end
end
