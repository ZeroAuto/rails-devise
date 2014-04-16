class UserStepsController < ApplicationController
	include Wicked::Wizard
	steps :step_one, :step_two

	def show
    @user = current_user
    render_wizard
  end
  
  def update
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end
end
