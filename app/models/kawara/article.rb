require 'kramdown'

module Kawara
  class Article < ActiveRecord::Base
    def html_content(auto_ids: true)
      Kramdown::Document.new(content, auto_ids: auto_ids).to_html
    end
  end
end
