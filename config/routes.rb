Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :jobs 
  resources :users
  root to: "jobs#index"
  namespace :api do
    namespace :v1 do
      # post 'authenticate', to: 'authentication#authenticate'
      resources :jobs
    end
  end
  post 'apply' => "jobs#apply"
  # post 'authenticate', to: 'authentication#authenticate'
  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
