# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DrinksController, type: :controller do
  let(:user) {FactoryBot.create(:user) }

  describe 'GET #new' do
    it 'returns http success when user is sign in' do
      sign_in(user)
      get :new
      expect(response).to have_http_status(:success)
    end

    it 'redirect when user is sign out' do
      get :new 
      expect(response).to redirect_to new_user_session_path
    end
  end

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
