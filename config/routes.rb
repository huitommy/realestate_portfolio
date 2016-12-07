Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: "dashboard#index", as: "authenticated_root"
  end
  
  root to: "welcome#index"

  namespace :api do
    resources :properties do
      get :search, on: :collection
    end
  end
end
