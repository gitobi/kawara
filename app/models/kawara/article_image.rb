module Kawara
  class ArticleImage < ActiveRecord::Base

    belongs_to :article
    attachment :file,   type: :image

    validates :article, presence: true

  end
end
