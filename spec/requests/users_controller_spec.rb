require 'rails_helper'

RSpec.describe UsersController, type: :request do

  let(:user) { Fabricate(:user) }
  let(:headers) { valid_headers.except('Authorization') }
  let(:valid_attributes) do
    Fabricate.attributes_for(:user, password: user.password, password_confirmation: user.password)
  end

  describe :index do
    context 'when valid request' do
      before {
        Fabricate.times(5, :user)
        get "/users", headers: valid_headers
      }

      it 'returns no error' do
        expect(response).to have_http_status(:ok)
      end

      it 'lists all users' do
        expect(json.size).to eq(6)
      end
    end
  end
end
