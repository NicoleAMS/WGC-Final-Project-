class RegistrationsController < Devise::RegistrationsController

  # overwrites Devise's built in methods for sanitizing the sign_up and account_update parameters 
  # to include custom parameter :code 
  # config/routes.rb tells devise to use this RegistrationController rather than Devise's built in Registration Controller

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :code)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :code)
  end
end