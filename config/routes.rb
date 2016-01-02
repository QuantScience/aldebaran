Rails.application.routes.draw do
  root "pages#home"
  get 'pages/home' => 'pages#home'
  get 'pages/trading_apps' => 'pages#trading_apps'
  get 'pages/how_it_works?' => 'pages#how_it_works?'
  get 'pages/faq' => 'pages#faq'
end
