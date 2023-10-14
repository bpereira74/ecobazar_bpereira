Rails.application.routes.draw do
  devise_for :users
      get '/home',    to: 'pages#home'
      get '/privacy', to: 'pages#privacy'
      get '/legal',   to: 'pages#terms'
      root 'pages#home'
end
