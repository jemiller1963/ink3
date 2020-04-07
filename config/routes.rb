require 'sidekiq/web'

Rails.application.routes.draw do
  resources :notes
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  devise_for :users
  root to: 'home#index'

  namespace :user do
    root :to => 'notes#index'
  end
end
