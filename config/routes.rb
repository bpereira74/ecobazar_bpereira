Rails.application.routes.draw do
  resources :eco_products
  # Devise
  # Devise
  devise_for :users,  controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'register' }

      get '/home',    to: 'pages#home'
      get '/privacy', to: 'pages#privacy'
      get '/legal',   to: 'pages#terms'
      root 'pages#home'
end
