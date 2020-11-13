class ArticlesController < ApplicationController
  def index
    Article.all
  end
end
