Rails.application.routes.draw do
  root 'welcome#index'
  #get '/auth/:provider/callback', to: 'provider#login'
  get '/auth/timecrowd/callback', to: 'provider#login'
end
