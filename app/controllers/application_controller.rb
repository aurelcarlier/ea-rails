class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :reset_session
  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
