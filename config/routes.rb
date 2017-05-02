# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/test' => 'user_ratings#test'
  get '/testing' => 'examples#test'
  resources :users, only: [:index, :show]
  resources :albums, except: [:new, :edit ]
  resources :user_ratings, except: [:new, :edit, :show]
  get '/my-ratings' => 'user_ratings#my_ratings'
  get '/user_ratings/:albumid' => 'user_ratings#show'
end
