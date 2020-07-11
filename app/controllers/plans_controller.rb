class PlansController < ApplicationController

  before_action :authenticate_user!, only: [:index, :search, :show] 
  def index
    @plans=Plan.all
  
  end

  def show
    @plan=Plan.find(params[:id])
    gon.id=@plan['id']
    gon.title=@plan['title']
    gon.depature_time=@plan['depature_time']
    gon.depature_address=@plan['depature_address']
    gon.destination_address=@plan['destination_address']
    gon.stopby_address1=@plan['stopby_address1']
    gon.stopby_address2=@plan['stopby_address2']
    gon.stopby_name1=@plan['stopby_name1']
    gon.stopby_name2=@plan['stopby_name2']
  
  end

  def search
    @plan = Plan.new
    @plans=Plan.all
  end



  def create
    if request.post?
      plan=Plan.create(plan_params)
    end
    redirect_to user_path(id: current_user.id)

  end
  
  def destroy
    plan=Plan.find(params[:id])
    plan.destroy
    redirect_to user_path(id: current_user.id)
  end

  def toppage

  end

  


  private
  def plan_params
    params.require(:plan).permit(:id,:user_id,:title,:depature_time,:depature_address, :destination_address, :stopby_address1,:stopby_name1, :stopby_address2, :stopby_name2)
  end

end
