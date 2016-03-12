require 'kramdown'

module Kawara
  class Article < ActiveRecord::Base

    has_many :images, class_name: 'ArticleImage', dependent: :destroy

    validates :title, presence: true

    accepts_attachments_for :images

    def html_content(auto_ids: true)
      Kramdown::Document.new(content, auto_ids: auto_ids).to_html
    end
  end
end
