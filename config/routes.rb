Rails.application.routes.draw do
  root "pages#home"
  get 'pages/home' => 'pages#home'
  get 'pages/trading_apps' => 'pages#trading_apps'
  get 'pages/how_it_works', to: 'pages#how_it_works', as: 'pages_how_it_works'
  get 'pages/faq' => 'pages#faq'
  get 'pages/contact' => 'pages#contact'
end
