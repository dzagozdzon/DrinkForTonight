# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'drinks/show.html.erb', type: :view do
  it 'has h2 and h3 text with a proper class' do
    have_css('h2')
    have_css('h3')
  end
end
