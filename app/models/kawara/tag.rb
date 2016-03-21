module Kawara
  class Tag < ActiveRecord::Base

    has_many :articles_tags, dependent: :destroy
    has_many :articles,      through: :articles_tags

    validates :name, presence: true, uniqueness: true

    delegate :latest, to: :articles, prefix: true
  end
end
