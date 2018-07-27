Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, shallow: true, only: [:new, :create, :destroy]
  end
end
