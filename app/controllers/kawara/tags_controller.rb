require_dependency "kawara/application_controller"

module Kawara
  class TagsController < ApplicationController
    def show
      tag= Kawara::Tag.find(params[:id])
      @articles = tag.articles_latest
    end
  end
end
