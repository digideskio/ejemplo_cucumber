Cucmb::Application.routes.draw do
  root :to => "home#index"

  get '/suscribir/:name' => 'subscriptions#new'
  post '/suscribir/:name' => 'subscriptions#create'
end
