class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize
  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to main_url, notice: "Please log in"
     end
     @categories = Category.all
     @word_types = WordType.all
  end
end
