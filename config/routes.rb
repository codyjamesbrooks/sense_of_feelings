Rails.application.routes.draw do
  root to: 'polls#new'
  
  resources :polls, only: [:new, :create, :show, :update] do
    resources :replies, only: [:new, :create]
  end 
end
