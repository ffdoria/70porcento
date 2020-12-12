Rails.application.routes.draw do
  #get 'rails/generate'
  #get 'rails/controller'
  get 'calendario' => 'calendario#calendario'
  
  devise_for :users
  resources :users do
    resources :grades
  end
  resources :grades do 
    resources :subjects
  end
  resources :subject do 
    resources :atividades
  end
  resources :subject do 
    resources :aulas
  end
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end