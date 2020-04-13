Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments
  resources :locations
  resources :students
  resources :subjects
  resources :tutors
end
