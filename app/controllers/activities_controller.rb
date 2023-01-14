class ActivitiesController < ApplicationController

  def index
    @activity = ActivityService.find_activity(params[:num_participants])
    if @activity[:error]
    # binding.pry
    redirect_to root_path
    flash[:notice] = 'Sorry that many people is just no fun'
  end
  end

end