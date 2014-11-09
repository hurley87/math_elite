class FirstsController < ApplicationController

	def first
		@user = current_user
		@score = First.new
	end

	private

	def first_params
    params.require(:first).permit(:user_id, :start, :end)
  end
end
