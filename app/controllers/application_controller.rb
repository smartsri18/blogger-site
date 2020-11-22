class ApplicationController < ActionController::Base
  before_action :set_contact_us

  def set_contact_us
    @contact_us = ContactUsForm.new
  end
end
