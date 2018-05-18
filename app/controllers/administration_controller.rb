class AdministrationController < ApplicationController
  def home
    return redirect_to '/login' unless @current_user.try(:admin?)
  end
end
