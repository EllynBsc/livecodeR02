Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/pets/new', to: 'pets#new'
  # post '/pets', to: 'pets#create'

  # get 'pets/:id/edit', to: 'pets#edit'
  # patch 'pets/:id', to: 'pets#update'

  # get 'pets', to: 'pets#index'
  # get 'pets/:id', to: 'pets#show'

  # delete '/pets/:id', to: 'pets#destroy'

    resources :pets

end
