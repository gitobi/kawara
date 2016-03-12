require 'rails_helper'

module Kawara
  RSpec.describe Article, type: :model do

    describe '#html_content' do
      let(:article) { build :kawara_article }
      subject { article.html_content }
      it { is_expected.to eq "<h1 id=\"header1\">Header1</h1>\n" }
    end
  end
end
