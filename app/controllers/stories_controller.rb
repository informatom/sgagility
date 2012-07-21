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
  
end
