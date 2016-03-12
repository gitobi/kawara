require 'rails_helper'

module Kawara
  RSpec.describe Article, type: :model do
    describe 'associations' do
      it { should have_many(:images) }
    end

    describe 'validations' do
      it { should validate_presence_of(:title) }
    end

    describe '#html_content' do
      let(:article) { build :kawara_article }
      subject { article.html_content }
      it { is_expected.to eq "<h1 id=\"content-header\">Content Header</h1>\n" }
    end
  end
end
