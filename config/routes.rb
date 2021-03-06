Rails.application.routes.draw do
  resources :posts
  get '/', to: 'posts#index'
  post '/posts/new', to: 'posts#confirm', as: 'confirm_post'
  resources :users
  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions/new' , to: 'sessions#create', as: 'create_session'
  get '/sessions/destroy' , to: 'sessions#destroy', as: 'destroy_session'
  resources :favorites, only: [:index, :create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
