require_dependency "kawara/application_controller"

module Kawara
  class TagsController < ApplicationController
    def index
      @tags = Kawara::Tag.all
    end

    def show
      tag= Kawara::Tag.friendly.find(params[:id])
      @articles = tag.articles_latest
    end
  end
end
