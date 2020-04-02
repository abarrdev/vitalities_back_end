Rails.application.routes.draw do
  resources :records, only: [:index, :show]
  resources :patients, only: [:index, :show]
  post 'register_patient' => 'registrations#create'
end
