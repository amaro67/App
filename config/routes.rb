Rails.application.routes.draw do
  resources :kalendars
  resources :kontakts
  resources :salons
  resources :pocetnas
  resources :frizures
  resources :klijentis
  resources :rezervacijes
  root 'pocetnas#index'
end
