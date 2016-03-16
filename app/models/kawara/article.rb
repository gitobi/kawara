require 'kramdown'

module Kawara
  class Article < ActiveRecord::Base

    belongs_to :category
    has_many :images,             class_name: 'ArticleImage', dependent: :destroy
    has_many :articles_tags,      dependent: :destroy
    has_many :tags,               through: :articles_tags
    has_many :articles_meta_tags, dependent: :destroy
    has_many :meta_tags,          through: :articles_meta_tags

    enum status: { draft: 0, published: 10 }

    accepts_attachments_for :images

    def self.find_from_published(id)
      published.find(id)
    end

    def html_content(auto_ids: true)
      Kramdown::Document.new(content, auto_ids: auto_ids).to_html
    end
  end
end
