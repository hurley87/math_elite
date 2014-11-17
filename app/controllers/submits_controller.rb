class SubmitsController < ApplicationController
	def new
  end

  def create
  	@submit = Submit.new
  	@submit.user_id = current_user.id
  	@submit.level_id = params[:submit][:level_id].to_i
  	@submit.score = params[:submit][:score]
    @submit.save
  end

  private

  def submit_params
  	params.require(:submit).require(:level_id, :user_id, :score)
  end
end
