FactoryGirl.define do
  factory :kawara_category, class: 'Kawara::Category' do
    name "MyString"
    factory :kawara_category_with_published_articles do

      transient do
        articles_count 3
      end

      after(:create) do |category, evaluator|
        create_list(:published_article, evaluator.articles_count, category: category)
      end
    end
  end
end
