class UsersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def show
    @plans = Plan.where(user_id: params[:id])
  end


  
end
