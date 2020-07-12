class UsersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def show
    @plans = Plan.where(user_id: params[:id])
  end

  def destroy
    plan=Plan.find(params[:id])
    plan.destroy
    redirect_to user_path(id: current_user.id)
  end


  
end
