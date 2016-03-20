require 'rails_helper'

module Kawara
  RSpec.describe HomeController, type: :controller do

    routes { Kawara::Engine.routes }

    describe 'GET #index' do
      subject { get :index }

      let(:draft_article) { create :draft_article }
      let(:published_article) { create :published_article }

      context 'when there is a published article' do
        before { published_article; subject }
        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match_array published_article }
      end

      context 'when there are no published articles' do
        before { draft_article; subject }

        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match Kawara::Article.none }
      end
    end
  end
end
