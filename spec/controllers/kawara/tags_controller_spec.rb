require 'rails_helper'

module Kawara
  RSpec.describe TagsController, type: :controller do

    routes { Kawara::Engine.routes }

    describe 'GET #index' do
      subject { get :index }

      before { subject }

      context 'when there is no tag' do
        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:tags)).to match_array(Kawara::Tag.none) }
      end

    end

    describe 'GET #show' do
      subject { get :show, id: id }

      let(:tag) { create :kawara_tag }
      let(:tag_with_published_articles) { create :kawara_tag_with_published_articles }

      context 'when there are related articles' do
        let(:id) { tag_with_published_articles.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match(tag_with_published_articles.articles_latest) }
      end

      context 'when there are no related articles' do
        let(:id) { tag.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match Kawara::Article.none }
      end

      context 'when there are no tags' do
        let(:id) { 1 }
        it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
      end
    end

  end
end
