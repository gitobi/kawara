require 'rails_helper'

module Kawara
  RSpec.describe MetaTag, type: :model do

    describe 'associations' do
      it { should have_many(:articles_meta_tags) }
      it { should have_many(:articles) }
    end

    describe 'validations' do
      it { should validate_presence_of(:name) }

      describe 'uniqueness' do
        subject { build :kawara_meta_tag }
        it { should validate_uniqueness_of(:name) }
      end
    end
  end
end
