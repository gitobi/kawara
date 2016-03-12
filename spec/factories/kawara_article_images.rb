FactoryGirl.define do
  factory :kawara_article_image, class: 'Kawara::ArticleImage' do
    association :article, factory: :kawara_article
    file_id 'MyString'
  end
end
