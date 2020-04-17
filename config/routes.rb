Rails.application.routes.draw do
  get('/home', {to: 'home#index'})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/students/login', {to: 'students#view_login'})
  post('/students/login', {to: 'students#handle_login'})
  # get('/students/home', {to: 'students#home'})

  get "/signup", to: "students#new"

  resources(:appointments, :locations, :students, :subjects, :tutors)

  

end
