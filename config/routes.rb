Rails.application.routes.draw do
  
  get "about", to: "about#index"  # funciona para renomear rota: get "about-us", to: "about#index", as: :about # /about
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"# registrations#new

  #realizar logout
  delete "logout", to: "sessions#destroy" # criar controller e action 21/09/2021 
  
  
  #realizar login alterei rota root = 22/09/2021
  root  to: "sessions#create"##get "sign_in", to: "sessions#new"  #apresenta login
  get "sign_in", to: "sessions#create"# funcionou ! 22/09/2021
  post "sign_in", to: "sessions#create" # realiza login eredireciona para main!
  #
  get "principal", to: "main#index"#get" ##root to: "main#index"#get "/", to: "main#index" # root no futuro
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
