class LogsController < ApplicationController
  
  def index
  end

  def new
  end

  private

  def log_params
    params.require(:log).permit(:content, :image).merge(user_id: current_user.id)
  end
end
