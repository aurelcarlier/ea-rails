class AdministrationController < ApplicationController

  def home
    if !@current_user.try(:admin?)
      return redirect_to "/login"
    end
  end

end
