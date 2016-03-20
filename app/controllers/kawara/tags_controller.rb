require_dependency "kawara/application_controller"

module Kawara
  class TagsController < ApplicationController
    def show
      tag= Kawara::Tag.find(params[:id])
      @articles = tag.latest_articles
    end
  end
end
