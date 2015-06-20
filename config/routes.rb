Rails.application.routes.draw do

  root 'homepage#index'

  get 'homepage/index'

  get 'requests/new'
  post 'requests/create'

end
