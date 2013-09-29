Homestead::Engine.routes.draw do
  root 'listings#search'
  resources :listings
end
