Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  root 'homepage#index'

  get 'homepage/index'
  post 'homepage/register_user'
  get 'homepage/get_started'
  post 'homepage/get_started', to: 'homepage#submit_getting_started'


end
