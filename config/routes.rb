Rails.application.routes.draw do
  get 'favorites/crate'

  get 'sessions/new'

  resources :contributions
  resources :users
  resources :sessions
  resources :favorites

end
