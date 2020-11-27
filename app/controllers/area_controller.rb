class AreaController < ApplicationController
  
  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def area_params
    params.require(:area).permit(:date, :area, :entry_id).merge(user_id: current_user.id)
  end
end