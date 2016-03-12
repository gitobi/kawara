require 'rails_helper'

module Kawara
  RSpec.describe ArticlesController, type: :controller do

    routes { Kawara::Engine.routes }

    describe 'GET #show' do
      subject { get :show, id: id }

      let(:article) { create :kawara_article }

      context 'when there is an article' do
        let(:id) { article.id }

        before { subject }

        it { expect(response).to render_template(:show) }
        it { expect(response).to have_http_status(:success) }
        it { expect(assigns(:article)).to eq(article) }
      end

      context 'when there are no articles' do
        let(:id) { 1 }
        it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
      end
    end
  end
end
