require 'rails_helper'

module Kawara
  RSpec.describe Tag, type: :model do

    describe 'associations' do
      it { should have_many(:articles_tags) }
      it { should have_many(:articles) }
    end

    describe 'validations' do
      it { should validate_presence_of(:name) }

      describe 'uniqueness' do
        subject { build :kawara_tag }
        it { should validate_uniqueness_of(:name) }
      end
    end

    describe 'deligations' do
      it { should delegate_method(:latest).to(:articles).with_prefix }
    end
  end
end
