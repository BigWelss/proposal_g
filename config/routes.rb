Rails.application.routes.draw do
	root 'static_pages#menu'

	get '/projetos', to: 'projetos#index'
 	get 'usuario/show'
  	get 'projeto/show'

  	get '/menu', to: 'static_pages#menu'
  	get '/ajuda', to: 'static_pages#help'

 	get    '/login',   to: 'sessions#new'
 	post   '/login',   to: 'sessions#create'
  	delete '/logout',  to: 'sessions#destroy'

  	resources :usuarios
  	resources :projetos
end
