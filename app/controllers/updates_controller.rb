class UpdatesController < ApplicationController

  def create
  	@update = Update.new
  	@user = current_user
   	@update.user_id = @user.id
   	
    if @update.save
      @update.send_text_message(@user) 
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @update = Update.find(params[:update_id])
    @update.destroy
    redirect_to user_patient_path(params[:user_id], params[:patient_id])
  end

  private

  def update_params
    params.require(:update).permit(:body, :user_id)
  end
end
