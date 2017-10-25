Rails.application.routes.draw do
  resources :characters
  root 'pages#index'
end
