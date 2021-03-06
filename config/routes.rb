Rails.application.routes.draw do
  devise_scope :user do
    get '/users/:id' => 'devise/registrations#show'
  end
  devise_for :users, controllers: {registrations: 'users/registrations'}, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :stories
  root 'stories#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
