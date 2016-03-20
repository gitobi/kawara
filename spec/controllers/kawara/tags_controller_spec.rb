require 'rails_helper'

module Kawara
  RSpec.describe TagsController, type: :controller do

    routes { Kawara::Engine.routes }

    describe "GET #show" do
      it "returns http success" do
        get :show
        expect(response).to have_http_status(:success)
      end
    end

  end
end
