class PagesController < ApplicationController
  def index
    @articles = Article.last(4)
  end

  def user_profile
    @user = User.find_by(username: params[:username])
    @articles = @user.articles
    @user_profile_flag = true
  end

  def contact_us
    @contact_us = ContactUsForm.new(contact_us_params)

    respond_to do |format|
      if @contact_us.save
        format.html { redirect_to root_path, notice: 'We will contact you back' }
        format.json { render :show, status: :created, location: @contact_us }
      else
        format.html { redirect_to root_path }
        format.json { render json: @contact_us.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_us_params
    params.require(:contact_us_form).permit(:email, :message)
  end
end
