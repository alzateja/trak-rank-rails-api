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
  # Only allow add albums adding authentication
  resources :albums, only: [:create, :index, :show]
  resources :user_ratings, except: [:new, :edit, :show]
  get '/my-ratings' => 'user_ratings#my_ratings'
  # update routes for find album rating
  get '/user_ratings/by_album/:albumid' => 'user_ratings#findalbumrating'
end
