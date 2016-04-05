FactoryGirl.define do
  factory :kawara_articles_tag, class: 'Kawara::ArticlesTag' do
    association :article, factory: :kawara_article
    association :tag,     factory: :kawara_tag
  end
end
