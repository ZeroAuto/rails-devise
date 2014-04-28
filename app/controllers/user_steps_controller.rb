class UserStepsController < ApplicationController
  before_filter :authenticate_user!
	include Wicked::Wizard
	steps :step_one, :step_two

	def show
    @user = current_user
    render_wizard
  end
  
  def update
    params.permit!
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end
end
