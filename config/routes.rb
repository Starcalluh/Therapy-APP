Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments 


  get '/login', to: 'patients#login'
  post '/login', to: 'patients#sign_in'
  get '/signup', to: 'patients#signup'
  post '/signup', to: 'patients#sign_up'
  get '/patientform', to: 'patients#patientform'
  
end
