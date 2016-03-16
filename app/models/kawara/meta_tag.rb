module Kawara
  class MetaTag < ActiveRecord::Base

    has_many :articles_meta_tags, dependent: :destroy
    has_many :articles,           through: :articles_meta_tags

    validates :name, presence: true, uniqueness: true
  end
end
