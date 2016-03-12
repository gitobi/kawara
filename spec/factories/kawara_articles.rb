FactoryGirl.define do
  factory :kawara_article, class: 'Kawara::Article' do
    title    'Article Title'
    subtitle 'Article Subtitle'
    content  '# Content Header'
  end
end
