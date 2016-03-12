require 'rails_helper'

module Kawara
  RSpec.describe ArticleImage, type: :model do
    describe 'associations' do
      it { should belong_to(:article) }
    end

    describe 'validations' do
      it { should validate_presence_of(:article) }
    end
  end
end
