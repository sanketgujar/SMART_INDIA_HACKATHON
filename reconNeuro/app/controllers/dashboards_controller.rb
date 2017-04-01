class DashboardsController < ApplicationController
    before_action :set_object_input
  def index
    @object_input = Neuro.new
  end

  def update
   if @object_input.update(object_params)
     flash[:notice] = 'Image updated'
     redirect_to controller: 'dashboards', action: 'index'
   end
  end

  private
  def object_params
    params.require(:object_input).permit(:object1)
  end
  def set_object_input
    @object_input = Neuro.new
  end
end
