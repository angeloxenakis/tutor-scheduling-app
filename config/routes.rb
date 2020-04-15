Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/students/login', {to: 'students#view_login'})
  post('/students/login', {to: 'students#handle_login'})
  
  resources(:appointments, :locations, :students, :subjects, :tutors)

  

end
