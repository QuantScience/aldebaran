Rails.application.routes.draw do
  get 'store/my_store'

  get 'store/show_product'

  root "pages#home"
  get 'pages/home' => 'pages#home'
  get 'pages/trading_apps' => 'pages#trading_apps'
  get 'pages/how_it_works', to: 'pages#how_it_works', as: 'pages_how_it_works'
  get 'pages/faq' => 'pages#faq'
  get 'pages/contact' => 'pages#contact'
  get 'pages/about_us' => 'pages#about_us'
  get 'pages/show_robot' => 'pages#show_robot'
end
