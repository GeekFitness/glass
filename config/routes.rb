Rails.application.routes.draw do
  resources :events
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'clients#index'

get  '/signup',  to: 'clients#new'

end
