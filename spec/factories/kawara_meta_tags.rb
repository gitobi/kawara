FactoryGirl.define do
  factory :kawara_meta_tag, class: 'Kawara::MetaTag' do
    association    :site, factory: :kawara_site
    name           'MyString'
    articles_count nil
  end
end
