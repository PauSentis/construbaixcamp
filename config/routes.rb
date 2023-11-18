Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  scope '(:locale)', locale: /en|es|ca/ do
    root "pages#home"
    get '/business', to: 'pages#business', as: 'business'
    get '/services', to: 'pages#services', as: 'services'
    get '/trajectory', to: 'pages#trajectory', as: 'trajectory'
    get '/contact', to: 'contact#new', as: 'contact'
    post '/contact', to: 'contact#create'
  end
end
