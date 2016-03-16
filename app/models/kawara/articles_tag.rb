module Kawara
  class ArticlesTag < ActiveRecord::Base

    belongs_to :article
    belongs_to :tag, counter_cache: :articles_count

    validates :article, presence: true
    validates :tag,     presence: true
  end
end
