Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  # Sidekiq Web UI, only for admins.
  require 'sidekiq/web'
  # authenticate :user, lambda { |u| u.admin } do
  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
