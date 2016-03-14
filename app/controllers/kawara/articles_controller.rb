require_dependency "kawara/application_controller"

module Kawara
  class ArticlesController < ApplicationController
    def show
      @article = Kawara::Article.find_from_published(params[:id])
    end
  end
end
