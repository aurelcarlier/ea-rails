class AuthenticationController < ApplicationController
  def index; end

  def login
    @current_user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if @current_user
      flash[:info] = 'Vous êtes connecté.'
      session[:user_id] = @current_user.id
    else
      flash[:info] = 'Échec de la connexion.'
      session[:user_id] = nil
    end
    redirect_to @current_user ? '/admin' : '/login'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end
end
