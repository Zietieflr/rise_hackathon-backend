Rails.application.routes.draw do
  resources :signees
  resources :petitions
  post '/petitions/:id', to: 'petitions#add_signature'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
