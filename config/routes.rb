Rails.application.routes.draw do
  root :to => 'home#index'
  get 'home/index'
  get 'about/about', to: 'portfolio#portfolio'
  get 'portfolio/portfolio', to: 'portfolio#portfolio'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
