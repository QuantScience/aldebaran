Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get 'pages/my_store' => 'pages#my_store'
  get 'pages/home' => 'pages#home'
  get 'pages/trading_apps' => 'pages#trading_apps'
  get 'pages/how_it_works', to: 'pages#how_it_works', as: 'pages_how_it_works'
  get 'pages/faq' => 'pages#faq'
  get 'pages/contact' => 'pages#contact'
  get 'pages/about_us' => 'pages#about_us'
  get 'pages/partnership' => 'pages#partnership'
  get 'pages/strategies' => 'pages#strategies'
  get 'pages/portfolios' => 'pages#portfolios'
  get 'pages/indicators' => 'pages#indicators'
  get 'pages/education' => 'pages#education'
  get 'pages/thanks_for_purchase' => 'pages#thanks_for_purchase'
  get 'pages/my_products' => 'pages#my_products'
  get 'users' => 'orders#users'
  resources :contents
  resources :faq_items
  resources :steps
  resources :images
  resources :products
  resources :orders
end
