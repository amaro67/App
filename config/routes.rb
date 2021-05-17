Rails.application.routes.draw do
  resources :frizures
  resources :klijentis
  resources :rezervacijes
  root 'frizures#index'
end
