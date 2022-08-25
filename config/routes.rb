Rails.application.routes.draw do
  resources :classe_disciplinas
  resources :avaliacaos
  resources :professors
  resources :disciplinas
  resources :salas
  resources :alunos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
