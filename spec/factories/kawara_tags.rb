FactoryGirl.define do
  factory :kawara_tag, class: 'Kawara::Tag' do
    association :site, factory: :kawara_site, strategy: :build
    name        'MyString'
    factory :kawara_tag_with_published_articles do

      transient do
        articles_count 3
      end

      after(:create) do |tag, evaluator|
        create_list(:published_article, evaluator.articles_count, site: tag.site, tags: [tag])
      end
    end
  end
end
