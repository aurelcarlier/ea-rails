Rails.application.routes.draw do
  get 'login' => 'authentication#login'
  post 'login' => 'authentication#check'
  delete 'login' => 'authentication#logout'
  get 'admin' => 'administration#home'
  root 'home#index'
end
