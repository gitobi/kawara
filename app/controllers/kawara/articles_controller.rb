require_dependency "kawara/application_controller"

module Kawara
  class ArticlesController < ApplicationController
    def show
      @article = Article.find(params[:id])
    end
  end
end
