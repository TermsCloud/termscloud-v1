Rails.application.routes.draw do

  root 'homepage#index'

  get 'homepage/index'
  get 'homepage/get_started'


end
