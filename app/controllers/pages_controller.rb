class PagesController < ApplicationController
  def index
    @articles = Article.last(4)
  end

  def user_profile
    @user = User.find_by(username: params[:username])
    @articles = @user.articles
    @user_profile_flag = true
  end
end
