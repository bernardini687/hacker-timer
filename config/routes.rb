Rails.application.routes.draw do
  root to: 'pages#home'

  resources :games, only: %i[create]
end
