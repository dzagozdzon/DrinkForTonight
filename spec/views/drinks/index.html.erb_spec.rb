# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'drinks/index.html.erb', type: :view do
  it 'displays all drinks' do
    assign(:drinks, [
      stub_model(Drink, :name => 'first'),
      stub_model(Drink, :name => 'second')
    ])

    render

    expect(rendered).to match /first/
    expect(rendered).to match /second/
  end
end
