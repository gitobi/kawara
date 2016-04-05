FactoryGirl.define do
  factory :kawara_site, class: 'Kawara::Site' do
    name 'MyString'

    trait :with_title do
      title 'MyString'
    end
    trait :with_description do
      description 'MyString'
    end
    trait :with_basic_info do
      with_title
      with_description
    end
    trait :closed do
      status 0
    end
    trait :opened do
      status 10
    end

    factory :closed_site_a, traits: [:closed, :with_basic_info] do
      name 'closed-site-a'
    end
    factory :closed_site_b, traits: [:closed, :with_basic_info] do
      name 'closed-site-b'
    end
    factory :opened_site_a, traits: [:opened, :with_basic_info] do
      name 'opened-site-a'
    end
    factory :opened_site_b, traits: [:opened, :with_basic_info] do
      name 'opened-site-b'
    end
  end
end
