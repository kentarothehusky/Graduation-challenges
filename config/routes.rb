Rails.application.routes.draw do
  get 'favorites/crate'

  get 'sessions/new'

  resources :contributions
  resources :users
  resources :sessions
  resources :favorites

  root  'sessions#new'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
