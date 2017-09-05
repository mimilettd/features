Rails.application.routes.draw do
  resources :orders, only: [:new, :create, :index] do
    resource :receipt
  end
end
