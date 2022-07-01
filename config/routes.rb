Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "home/index"
  root "categories#index"
  resources :users, only: [:index, :show] do
    resources :categories, only: [:index, :show, :create, :new, :destroy, :update] do
      resources :transancts, only: [:index, :show, :create, :new, :destroy, :update]
    end
  end
end
