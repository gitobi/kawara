require 'kramdown'

module Kawara
  class Article < ActiveRecord::Base

    extend FriendlyId
    friendly_id :title, use: :scoped, scope: :site

    belongs_to :site
    belongs_to :category
    has_many :images,             class_name: 'ArticleImage', dependent: :destroy
    has_many :articles_tags,      dependent: :destroy
    has_many :tags,               through: :articles_tags
    has_many :articles_meta_tags, dependent: :destroy
    has_many :meta_tags,          through: :articles_meta_tags

    enum status: { draft: 0, published: 10 }

    accepts_attachments_for :images

    delegate :name, to: :category, prefix: true

    scope :latest, -> (limit=10) { published.last(limit).reverse }


    def self.find_from_published(id)
      friendly.published.find(id)
    end

    def html_content(auto_ids: true)
      Kramdown::Document.new(content, auto_ids: auto_ids).to_html
    end
  end
end
