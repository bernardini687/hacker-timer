Rails.application.routes.draw do
  root to: 'pages#home'

  resources :games, only: %i[new create]
end
