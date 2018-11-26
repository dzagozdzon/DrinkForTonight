# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/edit.html.erb', type: :view do
  it 'renders form' do
    assign(:category, Category.create(name: 'sth'))

    render

    expect(rendered).to match(/<form/)
  end
end
