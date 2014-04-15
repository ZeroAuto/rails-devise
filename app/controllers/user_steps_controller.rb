class UserStepsController < ApplicationController
	include Wicked::Wizard
	steps :step_one, :step_two

	def show
		render_wizard
	end
end
