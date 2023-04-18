class ApplicationController < ActionController::Base
  def authorize_user!
    if user_signed_in?
      super
    else
      redirect_to home_path, notice: "Please login to continue"
    end
  end
end
