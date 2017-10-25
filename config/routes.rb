Rails.application.routes.draw do
  root 'pages#index'
  resources :characters

  post 'fight' => 'pages#fight'
end
