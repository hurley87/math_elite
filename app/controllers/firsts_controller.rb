class FirstsController < ApplicationController

	def first
		@user = current_user
		@score = First.new
		@update = Update.new
	end

	def create
		@first = First.new
		@user = current_user
		@first.user_id = current_user.id
		@first.score = params[:first][:score]
		@first.save
	end

	private

	def first_params
    params.require(:first).permit(:user_id, :start, :end, :score)
  end
end
