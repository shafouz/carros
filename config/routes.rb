Rails.application.routes.draw do
  root "veiculos#index"
  resources :veiculos
end
