require 'rails_helper'

module Kawara
  RSpec.describe CategoriesController, type: :controller do
    let(:site)          { create :opened_site_a }

    routes { Kawara::Engine.routes }

    describe 'GET #index' do
      subject { get :index }

      before { subject }

      context 'when there is no tag' do
        it { expect(response).to render_template(:index) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:categories)).to match_array(Kawara::Category.none) }
      end
    end

    describe 'GET #show' do
      subject { get :show, id: id }

      let(:category) { create :kawara_category, site: site }
      let(:category_with_published_articles) { create :kawara_category_with_published_articles, site: site }

      context 'when there are related articles' do
        let(:id) { category_with_published_articles.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match(category_with_published_articles.articles_latest) }
      end

      context 'when there are no related articles' do
        let(:id) { category.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:articles)).to match Kawara::Category.none }
      end

      context 'when there are no articles' do
        let(:id) { 1 }
        it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
      end
    end

  end
end
