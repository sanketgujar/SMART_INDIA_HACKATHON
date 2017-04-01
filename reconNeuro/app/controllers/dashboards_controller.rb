class DashboardsController < ApplicationController
  def index
    @object_input = Neuro.where(id: 1)
  end

  def update
   @object_input = Neuro.where(id: 1)
   if @object_input.update(object_params)
     flash[:notice] = 'Image updated'
     redirect_to controller: 'dashboards', action: 'index'
   end
  end

  private
  def object_params
    params.require(:object_input).permit(:object1)
  end
end
