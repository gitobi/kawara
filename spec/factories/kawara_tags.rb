FactoryGirl.define do
  factory :kawara_tag, class: 'Kawara::Tag' do
    name "MyString"
    factory :kawara_tag_with_published_articles do

      transient do
        articles_count 3
      end

      after(:create) do |tag, evaluator|
        create_list(:published_article, evaluator.articles_count, tags: [tag])
      end
    end
  end
end
