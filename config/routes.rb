Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, :controllers => { registrations: 'registrations' }

  root 'pages#home'
  get '/about' => 'pages#about'

  resources :galleries, only: [:index, :show] do  
    resources :stories, only: [:index, :show]
  end 

  resources :artefacts, only: [:index, :show] 

  resources :countries, only: [:index, :show]

  get "*any", via: :all, to: "errors#not_found"
end
