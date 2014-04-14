class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def new
      build_resource({})
      self.resource.members.build
      respond_with self.resource
  end

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:band_name, :email, :password, :password_confirmation, 
    	members_attributes: [:first_name, :last_name, :city, :state, :joined_date, :left_date, :instruments, :email])}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:band_name, :email, :password, :password_confirmation, :current_password,
    	members_attributes: [:first_name, :last_name, :city, :state, :joined_date, :left_date, :instruments, :email])}
  end

end
