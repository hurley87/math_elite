class LevelsController < ApplicationController
  def show
  	@level = Level.find(params[:id])
  	@update = Update.new
  	@score = Submit.new
  end

  def new
  end

  def edit
  end
end
