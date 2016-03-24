require_dependency "kawara/application_controller"

module Kawara
  class CategoriesController < ApplicationController
    def show
      category = Kawara::Category.find(params[:id])
      @articles = category.articles_latest
    end
  end
end
