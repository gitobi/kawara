require 'rails_helper'

module Kawara
  RSpec.describe ArticleImage, type: :model do
    describe 'associations' do
      it { should belong_to(:article) }
    end

    describe 'validations' do
      it { should validate_presence_of(:article) }
    end

    describe '#file' do
      let(:image) { build :kawara_article_image }

      it 'uploads a file' do
        image.file = Refile::FileDouble.new("dummy", "logo.png", content_type: "image/png")
        image.save
        expect(image.file.id).to_not be_nil
      end
    end
  end
end
