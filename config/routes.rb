Rails.application.routes.draw do
  resources :projetos
  root 'projetos#index'
  get 'projeto/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
