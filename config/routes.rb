Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/home'
  get 'pages/trading_apps'
  get 'pages/how_it_works?'
  get 'pages/faq'
end
