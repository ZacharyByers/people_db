Rails.application.routes.draw do
  root 'people#index'
  resources :people
  resources :pets
  get '/pets/new/:id', to: 'pets#new'
end
