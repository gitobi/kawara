FactoryGirl.define do
  factory :kawara_article_image, class: 'Kawara::ArticleImage' do
    association :site,    factory: :kawara_site,    strategy: :build
    association :article, factory: :kawara_article, strategy: :build
    file_id     'MyString'
  end
end
