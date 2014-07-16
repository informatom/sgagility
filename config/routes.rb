Sgagility::Application.routes.draw do
  match ENV['RAILS_RELATIVE_URL_ROOT'] => 'front#index' if ENV['RAILS_RELATIVE_URL_ROOT']

  root :to => 'front#index'

  get 'search' => 'front#search', :as => 'site_search'

  get 'stories/new_2_column' => 'stories#new_2_column'
  get 'stories/new_3_column' => 'stories#new_3_column'
  get 'stories/new_aside' => 'stories#new_aside'
  get 'stories/new_2_column_aside' => 'stories#new_2_column_aside'
  get 'stories/new_3_column_aside' => 'stories#new_3_column_aside'
  get 'stories/new_double_size_field' => 'stories#new_double_size_field'
end
