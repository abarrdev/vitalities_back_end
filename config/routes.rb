Rails.application.routes.draw do
  resources :records
  resources :patients
  # post 'register_patient' => 'registrations#create'
end
