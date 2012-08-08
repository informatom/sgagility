# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Sgagility::Application.routes.draw do


  # Resource routes for controller "projects"
  get 'projects(.:format)' => 'projects#index', :as => 'projects'
  get 'projects/new(.:format)' => 'projects#new', :as => 'new_project'
  get 'projects/:id/edit(.:format)' => 'projects#edit', :as => 'edit_project'
  get 'projects/:id(.:format)' => 'projects#show', :as => 'project', :constraints => { :id => %r([^/.?]+) }
  post 'projects(.:format)' => 'projects#create', :as => 'create_project'
  put 'projects/:id(.:format)' => 'projects#update', :as => 'update_project', :constraints => { :id => %r([^/.?]+) }
  delete 'projects/:id(.:format)' => 'projects#destroy', :as => 'destroy_project', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "attachments"
  get 'attachments(.:format)' => 'attachments#index', :as => 'attachments'
  get 'attachments/new(.:format)' => 'attachments#new', :as => 'new_attachment'
  get 'attachments/:id/edit(.:format)' => 'attachments#edit', :as => 'edit_attachment'
  get 'attachments/:id(.:format)' => 'attachments#show', :as => 'attachment', :constraints => { :id => %r([^/.?]+) }
  post 'attachments(.:format)' => 'attachments#create', :as => 'create_attachment'
  put 'attachments/:id(.:format)' => 'attachments#update', :as => 'update_attachment', :constraints => { :id => %r([^/.?]+) }
  delete 'attachments/:id(.:format)' => 'attachments#destroy', :as => 'destroy_attachment', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "stories"
  get 'stories(.:format)' => 'stories#index', :as => 'stories'
  get 'stories/new(.:format)' => 'stories#new', :as => 'new_story'
  get 'stories/:id/edit(.:format)' => 'stories#edit', :as => 'edit_story'
  get 'stories/:id(.:format)' => 'stories#show', :as => 'story', :constraints => { :id => %r([^/.?]+) }
  post 'stories(.:format)' => 'stories#create', :as => 'create_story'
  put 'stories/:id(.:format)' => 'stories#update', :as => 'update_story', :constraints => { :id => %r([^/.?]+) }
  delete 'stories/:id(.:format)' => 'stories#destroy', :as => 'destroy_story', :constraints => { :id => %r([^/.?]+) }

end
