require 'rails_helper'

module Kawara
  RSpec.describe ArticlesTag, type: :model do
    let(:site)    { create :opened_site_a }
    let(:article) { create :published_article, site: site }

    describe 'associations' do
      it { should belong_to(:article) }
      it { should belong_to(:tag) }
    end

    describe 'validations' do
      it { should validate_presence_of(:article) }
      it { should validate_presence_of(:tag) }
    end

    describe 'counter cache' do
      subject { create :kawara_articles_tag, article: article, tag: tag }
      let(:tag) { create :kawara_tag, site: site }
      it { expect{subject}.to change{tag.articles_count}.from(nil).to(1) }
    end
  end
end
