Rails.application.routes.draw do
  resources :records
  resources :patients
  # post 'register_patient' => 'registrations#create'
  post 'log_in', to: 'sessions#create'
  delete '/log_out', to: 'sessions#destroy'
  get 'logged_in', to: 'sessions#is_logged_in?'
end
