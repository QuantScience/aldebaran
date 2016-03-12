Rails.application.routes.draw do
  devise_for :users
  get 'store/my_store'
  get 'store/show_product'
  root "pages#home"
  get 'pages/home' => 'pages#home'
  get 'pages/trading_apps' => 'pages#trading_apps'
  get 'pages/how_it_works', to: 'pages#how_it_works', as: 'pages_how_it_works'
  get 'pages/faq' => 'pages#faq'
  get 'pages/contact' => 'pages#contact'
  get 'pages/about_us' => 'pages#about_us'
  get 'pages/show_product' => 'pages#show_product'
  get 'pages/strategies' => 'pages#strategies'
  get 'pages/portfolios' => 'pages#portfolios'
  get 'pages/indicators' => 'pages#indicators'
  resources :contents
  resources :faq_items
  resources :steps
  resources :images
end
