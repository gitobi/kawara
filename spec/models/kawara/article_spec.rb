require 'rails_helper'

module Kawara
  RSpec.describe Article, type: :model do
    describe 'associations' do
      it { should belong_to(:category) }
      it { should have_many(:images) }
      it { should have_many(:articles_tags) }
      it { should have_many(:tags) }
    end

    describe '.latest' do

      let(:draft_article)      { create :draft_article }
      let(:published_article1) { create :published_article }
      let(:published_article2) { create :published_article }

      context 'when no limit parameter' do
        subject { Kawara::Article.latest }

        context 'when there are no articles' do
          it { is_expected.to match Kawara::Article.none }
        end
        context 'when there are no published articles' do
          before { draft_article }
          it { is_expected.to match Kawara::Article.none }
        end
        context 'when there is a published article' do
          before { published_article1 }
          it { is_expected.to match_array published_article1 }
        end
      end
      context 'when passed limit parameter' do
        subject { Kawara::Article.latest(limit) }

        before { published_article1; published_article2 }

        context 'when limit equal 1' do
          let(:limit) { 1 }
          it { is_expected.to match_array published_article2 }
        end
        context 'when limit equal 2' do
          let(:limit) { 2 }
          it { is_expected.to match [published_article2, published_article1] }
        end
      end
    end

    describe '.find_from_published' do
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
