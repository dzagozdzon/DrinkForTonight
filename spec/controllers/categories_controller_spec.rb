# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  subject(:user) {FactoryBot.create(:user)}
  let(:category) { FactoryBot.create(:category) }

  context "when user is signed in"
    before { sign_in(user) }

    describe 'GET #new' do
      it 'returns http success' do
        get :new
        expect(response).to have_http_status(:success)
      end
    end

    describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
end
