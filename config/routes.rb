Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#landing'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/about' => 'sessions#about'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/user' => 'users#index'

  resources :workouts
end
