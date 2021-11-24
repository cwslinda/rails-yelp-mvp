Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants, only: [:edit, :update, :delete]
  end
   resources :restaurants, only: [:show, :index, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
