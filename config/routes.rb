Rails.application.routes.draw do
  resources :prs
  get 'portfolio/portfolio', to: 'portfolio#portfolio'
  get 'portfolio/:cate/:number', to: 'portfolio#project'
  post 'contact/contact_success', to: 'contact#contact_success'
  get 'contact/contact', to: 'contact#contact'
  get 'about/about', to: 'about#about'
  get 'home/index'
  root :to => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
