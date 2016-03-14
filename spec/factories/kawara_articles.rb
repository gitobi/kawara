FactoryGirl.define do
  factory :kawara_article, class: 'Kawara::Article' do
    factory :draft_article do
      title    'Article Title'
      subtitle 'Article Subtitle'
      content  '# Content Header'
      status   0
    end
    factory :published_article do
      title    'Article Title'
      subtitle 'Article Subtitle'
      content  '# Content Header'
      status   10
    end
  end
end
