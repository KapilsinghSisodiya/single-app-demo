Rails.application.routes.draw do

  devise_for :employees, path: 'employees', controllers: { sessions: "employees/sessions", registrations: "employees/registrations"}
  # eg. http://localhost:3000/users/sign_in
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions", registrations: "admins/registrations"}
  # eg. http://localhost:3000/admins/sign_in

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :employees
end
