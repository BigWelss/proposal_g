Rails.application.routes.draw do
	root 'sessions#new'

  get 'usuario/show'
  get 'projeto/show'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :usuarios
  resources :projetos
end
