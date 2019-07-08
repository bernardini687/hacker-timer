Rails.application.routes.draw do
  root to: 'pages#home'

  resources :games, only: %i[new create] do
    resources :players, only: %i[show]
  end
end
