require 'rails_helper'

RSpec.describe "Users", type: :request do

  let!(:users) {Fabricate.times(10, :user)}
  let(:user_id) {users.first.id}

  describe "GET /users" do
    before {get '/users'}

    it 'returns users' do
      # Note `json_response` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

  end
end
