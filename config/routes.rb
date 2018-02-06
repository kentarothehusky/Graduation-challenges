Rails.application.routes.draw do
  get 'sessions/new'

  resources :contributions
  resources :users
  resources :sessions

end
