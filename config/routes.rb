Rails.application.routes.draw do
  resources :employee_infos
  #get 'employee1/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'employee_infos#index'
end
