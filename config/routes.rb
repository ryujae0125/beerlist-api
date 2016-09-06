Rails.application.routes.draw do
  get '/' => 'beers#index'

  namespace :api do
    namespace :v1 do
      get '/beers' => 'beers#index'
      get '/beers/:id' => 'beers#show'
      post '/beers' => 'beers#create'
    end
    namespace :v2 do
      get '/beers' => 'beers#index'
      get '/beers/:id' => 'beers#show'
      post '/beers' => 'beers#create'
    end
  end
end
