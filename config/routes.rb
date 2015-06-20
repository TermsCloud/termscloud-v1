Rails.application.routes.draw do

  root 'homepage#index'

  ActiveAdmin.routes(self)


  get 'homepage/index'
  post 'homepage/register_user'
  get 'get_started', to: 'homepage#get_started'
  post 'get_started', to: 'homepage#submit_getting_started'

end
