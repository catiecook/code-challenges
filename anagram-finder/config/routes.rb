Rails.application.routes.draw do

  post '/search', to: 'pages#search'

  get '/search/:word', to: 'pages#anagrams'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

end
