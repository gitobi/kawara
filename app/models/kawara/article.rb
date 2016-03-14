require 'kramdown'

module Kawara
  class Article < ActiveRecord::Base

    has_many :images, class_name: 'ArticleImage', dependent: :destroy
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
