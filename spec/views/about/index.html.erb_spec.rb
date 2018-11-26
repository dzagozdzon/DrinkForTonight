# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'about/index.html.erb', type: :view do
  context '#GET' do
    it 'has h1 text with a proper class' do
      have_css('h1')
    end

    it 'has a paragraph' do
      have_css('p')
    end
  end
end
