Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home' => 'blog#home'
  get '/newpost' => 'blog#new'
  post '/whatever' => 'blog#create'
  delete '/blog/:id' => 'blog#destroy', as: 'del_blog'
  get '/blog/:id' => 'blog#show', as: 'one_blog'

  root to: 'blog#home'
end
