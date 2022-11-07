Rails.application.routes.draw do
  resources :receita
  resources :despesas
  resources :fornecedores
  resources :produtos

  root "home#index"
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   
end
