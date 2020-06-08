Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'patients#login'
  post '/login', to: 'patients#sign_in'
  get '/signup', to: 'patients#signup'
  get '/patientform', to: 'patients#patientform'

  resources :doctors
  resources :patients
  resources :appointments 



  
end
