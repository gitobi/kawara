module Kawara
  class Site < ActiveRecord::Base
    has_many :categories,     dependent: :destroy
    has_many :articles,       dependent: :destroy
    has_many :tags,           dependent: :destroy
    has_many :article_images, dependent: :destroy
    has_many :meta_tags,      dependent: :destroy

    enum status: { closed: 0, opened: 10 }

    validates :name, presence: true, uniqueness: true
  end
end
