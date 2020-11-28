class EquipmentsController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.valid?  
      @equipment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:thickness, :type, :weight, :dive_tank_cap, :dive_tank_type).merge(user_id: current_user.id)
  end
end