class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :ensure_signup_complete, only: [:new, :create, :update, :destroy]
  before_filter :configure_permitted_parameters, only: [:update]

  protected

  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :password, :password_confirmation, :current_password,
      :email, :tod_morning_early, :tod_morning_middle, :tod_morning_late, :dow_monday, :dow_tuesday, :dow_wednesday, :dow_thursday, :dow_friday, :dow_saturday, :dow_sunday )
    end
  end

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end
end
