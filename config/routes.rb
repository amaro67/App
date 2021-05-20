Rails.application.routes.draw do
  resources :salons
  resources :pocetnas
  resources :frizures
  resources :klijentis
  resources :rezervacijes
  root 'pocetnas#index'
end
