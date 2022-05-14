Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :pets, only: [:index, :create]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
