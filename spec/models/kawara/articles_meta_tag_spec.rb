require 'rails_helper'

module Kawara
  RSpec.describe ArticlesMetaTag, type: :model do
    let(:site)    { create :opened_site_a }
    let(:article) { create :published_article, site: site }

    describe 'associations' do
      it { should belong_to(:article) }
      it { should belong_to(:meta_tag) }
    end

    describe 'validations' do
      it { should validate_presence_of(:article) }
      it { should validate_presence_of(:meta_tag) }
    end

    describe 'counter cache' do
      subject { create :kawara_articles_meta_tag, article: article, meta_tag: meta_tag }
      let(:meta_tag) { create :kawara_meta_tag, site: site }
      it { expect{subject}.to change{meta_tag.articles_count}.from(nil).to(1) }
    end
  end
end
