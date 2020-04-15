require 'sidekiq/web'

Rails.application.routes.draw do
  resources :notes
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  devise_for :users, controllers: { registrations: 'users/registrations' }
  # root to: 'home#index'
  get 'mine', to: 'notes#mine'
  root to: 'application#root'
  mount Shrine.presign_endpoint(:cache) => '/images/upload'
end
