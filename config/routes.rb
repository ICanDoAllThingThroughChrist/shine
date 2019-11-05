Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "dashboard#index"
    get '/users/sign_out',:to => 'devise/sessions#destroy'
    get '/users/sign_in', :to => 'devise/sessions#new'
    resources :customers, only: [:index, :new, :create, :show]
    resources :carts, only: [:index,:new,:show, :create,:errors, :search]
    get 'errors',  to: 'carts#errors', as: :error
    get 'search', to: 'carts#search', as: :search
end
