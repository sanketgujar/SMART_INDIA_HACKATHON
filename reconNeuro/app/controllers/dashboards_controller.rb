class DashboardsController < ApplicationController
  before_action :set_object
  def index
    if @object_input.nil?
      @object_input = Neuro.new
    end
  end
  def update
   if @object_input.update(object_params)
     flash[:notice] = 'Image updated'
     render "dashboards/index"
   end
  end

  private
  def object_params
    params.require(:object_input).permit(:object1)
  end
  def set_object
    @object_input = Neuro.where(id: 1).first
  end
end
