Rails.application.routes.draw do
  resources :records
  resources :patients
  # post 'register_patient' => 'registrations#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
end
