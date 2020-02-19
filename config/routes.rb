Rails.application.routes.draw do
  get 'pr/pr'
  root :to => 'home#index'
  get 'home/index'
  get 'about/about', to: 'about#about'
  get 'portfolio/portfolio', to: 'portfolio#portfolio'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
