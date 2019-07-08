Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pomodoros, only: %i[create]

  # Sidekiq Web UI, only for admins.
  require 'sidekiq/web'
  # authenticate :user, lambda { |u| u.admin } do
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
