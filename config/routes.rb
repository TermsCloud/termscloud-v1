Rails.application.routes.draw do

  root 'homepage#index'

  ActiveAdmin.routes(self)


  get 'homepage/index'
  get 'get_started',  to: 'homepage#get_started'
  get 'contact',      to: 'homepage#contact'
  get 'terms',        to: 'homepage#terms'
  get 'privacy',      to: 'homepage#privacy'
  post 'contact',     to: 'homepage#send_contact'
  post '/',           to: 'homepage#register_user', as: 'register_user'
  post 'get_started', to: 'homepage#submit_getting_started'

end
