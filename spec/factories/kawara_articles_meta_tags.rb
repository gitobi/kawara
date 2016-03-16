FactoryGirl.define do
  factory :kawara_articles_meta_tag, class: 'Kawara::ArticlesMetaTag' do
    association :article, factory: :kawara_article
    association :meta_tag, factory: :kawara_meta_tag
  end
end
