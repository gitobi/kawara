require 'rails_helper'

module Kawara
  RSpec.describe Site, type: :model do
    describe 'associations' do
      it { should have_many(:categories)     }
      it { should have_many(:articles)       }
      it { should have_many(:tags)           }
      it { should have_many(:article_images) }
      it { should have_many(:meta_tags)      }
    end

    describe 'validations' do
      it { should validate_presence_of(:name) }

      describe 'uniqueness' do
        subject { build :kawara_site }
        it { should validate_uniqueness_of(:name) }
      end
    end
  end
end
