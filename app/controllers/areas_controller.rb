class AreasController < ApplicationController

  def new
    @area_condition = AreaCondition.new
  end

  def create
    area_condition = AreaCondition.new(area_params)
    if area_condition.valid?
      area_condition.save
      redirect_to new_equipment_path
    else
      render :new
    end
  end

  private

  def area_params
    params.require(:area_condition).permit(:dive_day, :entry, :region, :weather, :wind, :wave, :tide, :temperature, :water_temperature, :area_id).merge(user_id: current_user.id)
  end
end