require 'rails_helper'

RSpec.describe UsersController, type: :request do

   let!(:user) { Fabricate(:user) }
   let(:valid_attributes) { Fabricate.attributes_for :user }
   let(:invalid_attributes) { Fabricate.attributes_for :invalid_user }
    # set headers for authorization
   #let(:headers) { { 'Authorization' => token_generator(user.id) } }
   let(:headers) { valid_headers }

   describe "GET #index" do
    before(:each) do
      #allow(request).to receive(:headers).and_return(headers)
    end

    it "returns a success response" do
      get "/users", params: {}, headers: valid_headers
      expect(json).to eq [user.as_json]
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get "/users", params: {id: user.to_param}, headers: valid_headers
      expect(json).to eq user.as_json
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post "/users", params: {user: valid_attributes}, headers: valid_headers
        }.to change(User, :count).by(1)
      end

      it "renders a JSON response with the new user" do

        post "/users", params: {user: valid_attributes}, headers: valid_headers
        expect(json).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(user_url(User.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new user" do

        post "/users", params: {user: invalid_attributes}, headers: valid_headers
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user" do
        user = User.create! valid_attributes
        put "/users", params: {id: user.to_param, user: new_attributes}, headers: valid_headers
        user.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the user" do
        user = User.create! valid_attributes

        put "/users", params: {id: user.to_param, user: valid_attributes}, headers: valid_headers
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the user" do
        user = User.create! valid_attributes

        put "/users/#{user.to_param}", params: {user: invalid_attributes}, headers: valid_headers
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user" do
      user = User.create! valid_attributes
      expect {
        delete "/users/#{user.to_param}", headers: valid_headers
      }.to change(User, :count).by(-1)
    end
  end

end
