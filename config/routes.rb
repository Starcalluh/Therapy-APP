Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients
  resources :appointments
  get "/patientform", to: "patients#patientform"
  get "/signup", to: "patients#signup"
  get "/login", to: "patients#login"
  get "/appointment/new", to: "appointments#new"
  get "/appointments", to: "doctor#appointment"
end
