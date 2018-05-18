class AuthenticationController < ApplicationController

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to :login
  end

  def check
    @current_user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if @current_user
      flash[:info] = "Vous êtes connecté."
      session[:user_id] = @current_user.id
      redirect_to "/admin"
    else
      flash[:info] = "Échec de la connexion."
      session[:user_id] = nil
      redirect_to :login
    end
  end
end
