class StoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  def new_2_column
    hobo_new { render 'new_2_column' }
  end
  
  def new_3_column
    hobo_new { render 'new_3_column' }
  end
  
  def new_aside
    hobo_new { render 'new_aside' }
  end
  
  def new_2_column_aside
    hobo_new { render 'new_2_column_aside' }
  end
  
  def new_3_column_aside
    hobo_new { render 'new_3_column_aside' }
  end
  
  def new_double_size_field
    hobo_new { render 'new_double_size_field' }
  end
  
  def index
    hobo_index do
      @story = Story.new
    end
  end
  
  
  def show
    #@story = Story.find(params[:id])
    hobo_show do
      if params[:style]
        send_file @story.photo.path(params[:style])
      else
        render
      end
    end
  end
  
  def update
    hobo_update do
      respond_to do |format| 
        format.js   { 
          @this = @project
          hobo_ajax_response }
        format.html { redirect_to @story }
      end
    end
  end
  
  
  
  
end
