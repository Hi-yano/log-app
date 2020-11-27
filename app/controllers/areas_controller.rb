class AreasController < ApplicationController

  def new
    @area_condition = AreaCondition.new
  end

  def create
    @area_condition = AreaCondition.new(area_params)
    if @area_condition.valid? 
      @area_condition.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def area_params
    params.require(:area_condition).permit(:dive_day, :area, :entry_id, :weather, :wind, :wave, :tide_id, :temperature, :water_temperature).merge(user_id: current_user.id)
  end
end