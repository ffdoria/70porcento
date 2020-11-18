Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :index ] do
    resources :complementos
  end
  root to: "dashboard#index"
end