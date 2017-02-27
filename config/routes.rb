Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  #  path_names: {} removes the 'users/' namespace before all the routes and renames sign_in, sign_out, 
  #  sign_up to login, logout, register 
  # :controllers => { registrations: 'registrations' } tells Devise to use custom Registration Controller 
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, :controllers => { registrations: 'registrations' }

  root 'pages#home'
  get '/about' => 'pages#about'

  resources :galleries, only: [:index, :show] #do  
  #   resources :stories, only: [:index, :show]
  # end 

  resources :artefacts, only: [:index, :show] 

  resources :countries, only: [:index, :show]

  # 404 any requested path that doesn’t match the previous routing rules will match this rule
  get "*any", via: :all, to: "errors#not_found"
end
