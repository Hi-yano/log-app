class LogsController < ApplicationController
  
  def index
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def log_params
    params.require(:log).permit(:image, :point, :start_air, :finish_air, :max_depth, :ave_depth, :entry_time, :exit_time, :count, :text).merge(user_id: current_user.id)
  end
end
