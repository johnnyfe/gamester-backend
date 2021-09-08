Rails.application.routes.draw do
  resources :gameplays
  resources :games
  resources :consoles
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
