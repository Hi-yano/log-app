class EquipmentsController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    binding.pry
    if @equipment.valid?  
      @equipment.save
      redirect_to new_log_path
    else
      render :new
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:thickness, :type_id, :weight, :dive_tank_cap_id, :dive_tank_type_id).merge(user_id: current_user.id)
  end
end