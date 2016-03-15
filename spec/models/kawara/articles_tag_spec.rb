require 'rails_helper'

module Kawara
  RSpec.describe ArticlesTag, type: :model do

    describe 'associations' do
      it { should belong_to(:article) }
      it { should belong_to(:tag) }
    end

    describe 'validations' do
      it { should validate_presence_of(:article) }
      it { should validate_presence_of(:tag) }
    end

    describe 'counter cache' do
      subject { create :kawara_articles_tag, tag: tag }
      let(:tag) { create :kawara_tag }
      it { expect{subject}.to change{tag.articles_count}.from(nil).to(1) }
    end
  end
end
