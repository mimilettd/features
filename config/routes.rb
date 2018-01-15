Rails.application.routes.draw do
  resources :orders, only: [:new, :create, :index] do
    resource :receipt
  end

  resources :dashboard, only: [:index]

  root to: 'dashboard#show'
end
