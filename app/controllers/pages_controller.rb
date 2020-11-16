class PagesController < ApplicationController
  def index
    @articles = Article.last(4)
  end
end
