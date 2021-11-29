Rails.application.routes.draw do
  root to: 'static#index'
  
  resources :polls, only: [:new, :create, :show, :update] do
    resources :replies, only: [:new, :create]
  end 
end
