Rails.application.routes.draw do
  resources :videos
  resources :galleries
  resources :musics
  resources :tours
  resources :fans
  resources :news
  devise_for :users
  root 'welcome#index'

  get '/noticias' => 'welcome#noticias'
  get '/fanzone' => 'welcome#fanzone'
  get '/biografia' => 'welcome#biografia'
  get '/bonza_videos' => 'welcome#videos'
  get '/musica_video' => 'welcome#musica'
  get '/bonza_tour' => 'welcome#tour'
  get '/galeria' => 'welcome#galeria'

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
