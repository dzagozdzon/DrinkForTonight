# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'drinks/new.html.erb', type: :view do
  it 'renders form' do
    assign(:drink, Drink.create(name: 'sth'))

    render

    expect(rendered).to match(/<form/)
  end
end
