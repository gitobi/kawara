require_dependency "kawara/application_controller"

module Kawara
  class HomeController < ApplicationController
    def index
      @articles = Article.latest
    end
  end
end
