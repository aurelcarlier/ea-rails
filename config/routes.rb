Rails.application.routes.draw do
  resources :articles
  get 'login' => 'authentication#index'
  post 'login' => 'authentication#login'
  delete 'login' => 'authentication#logout'
  get 'admin' => 'administration#home'
  root 'home#index'
end
