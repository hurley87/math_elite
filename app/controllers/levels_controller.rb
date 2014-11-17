class LevelsController < ApplicationController
  def show
  	@level = Level.find(params[:id])
  	@update = Update.new
  	@score = Submit.new
  end

  def new
  	@level = Level.new
  end

  def edit
  end

  def create
  	@level = Level.new(level_params)
  	if @level.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  private

  def level_params
  	params.require(:level).permit(:name, :description, :youtube, :length, :total, :wrong)
  end
end
