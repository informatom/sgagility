class CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
#  
#  def create
#    hobo_create
#  end
  
#  def create
#    hobo_create do
#      render :text => "console.log('hola')" if request.xhr?
#      #hobo_ajax_response if request.xhr?
#    end
#  end

end
