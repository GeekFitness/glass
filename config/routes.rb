Rails.application.routes.draw do
  get 'sessions/new'

  resources :events
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'clients#index'

get  '/signup',  to: 'clients#new'
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

end
