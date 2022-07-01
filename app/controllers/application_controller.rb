class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # , :except
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
  end

  def authenticate_user!
    if user_signed_in?
      super
    elsif request.original_fullpath != home_index_path
      redirect_to home_index_path,
                  notice: 'Please Login to view that page!'
    end
  end
end
