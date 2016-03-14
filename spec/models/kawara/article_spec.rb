require 'rails_helper'

module Kawara
  RSpec.describe Article, type: :model do
    describe 'associations' do
      it { should have_many(:images) }
    end

    describe '#find_from_published' do
      subject { Kawara::Article.find_from_published(article.id) }

      let(:draft_article)     { create :draft_article }
      let(:published_article) { create :published_article }

      context 'when there are no published articles' do
        let(:article) { draft_article }
        it { expect{subject}.to raise_error(ActiveRecord::RecordNotFound) }
      end

      context 'when there are published article' do
        let(:article) { published_article }
        it { is_expected.to eq published_article }
      end
    end

    describe '#html_content' do
      let(:article) { build :draft_article }
      subject { article.html_content }
      it { is_expected.to eq "<h1 id=\"content-header\">Content Header</h1>\n" }
    end
  end
end
