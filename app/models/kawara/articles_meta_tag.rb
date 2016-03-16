module Kawara
  class ArticlesMetaTag < ActiveRecord::Base

    belongs_to :article
    belongs_to :meta_tag, counter_cache: :articles_count

    validates :article,  presence: true
    validates :meta_tag, presence: true
  end
end
