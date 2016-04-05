FactoryGirl.define do
  factory :kawara_article, class: 'Kawara::Article' do
    association :site, factory: :kawara_site, strategy: :build

    trait :with_title do
      title 'Article Title'
    end
    trait :with_subtitle do
      subtitle 'Article Subtitle'
    end
    trait :with_content do
      content '# Content Header'
    end
    trait :with_contents do
      with_title
      with_subtitle
      with_content
    end
    trait :draft do
      status 0
    end
    trait :published do
      status 10
    end

    factory :draft_article,     traits: [:draft,     :with_contents]
    factory :published_article, traits: [:published, :with_contents]
  end
end
