Rails.application.routes.draw do
  devise_for :users
  scope "/:locale" do
    get 'home/index'
    resources :jobs 
    resources :users
    resources :job_applications
    root to: "jobs#index"
    post 'apply' => "jobs#apply"
    get 'jobseeker' => "jobs#jobseeker"
  end
  namespace :api do
    namespace :v1 do
      # post 'authenticate', to: 'authentication#authenticate'
      resources :jobs
    end
  end
  # post 'authenticate', to: 'authentication#authenticate'
  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
