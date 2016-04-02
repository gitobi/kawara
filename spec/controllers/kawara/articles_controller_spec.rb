require 'rails_helper'

module Kawara
  RSpec.describe ArticlesController, type: :controller do

    routes { Kawara::Engine.routes }

    describe 'GET #index' do
      subject { get :index }

      let(:draft_article) { create :draft_article }
      let(:published_article) { create :published_article }

      context 'when there is no published article' do
        before { draft_article; subject }

        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match_array(Kawara::Article.none) }
      end

      context 'when there is a published article' do
        before { published_article; subject }

        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match_array(published_article) }
      end
    end

    describe 'GET #show' do
      subject { get :show, id: id }

      let(:draft_article) { create :draft_article }
      let(:published_article) { create :published_article }

      context 'when there is a published article' do
        let(:id) { published_article.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:article)).to eq(published_article) }
      end

      context 'when there are no published articles' do
        let(:id) { draft_article.id }
        it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
      end
    end
  end
end
