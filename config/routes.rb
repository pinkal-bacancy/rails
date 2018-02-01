Rails.application.routes.draw do
  get 'departments/new'

  get 'departments/index'

  get 'departments/show'

  get 'departments/edit'

  get 'new/index'

  get 'new/edit'

  get 'new/show'

  get 'students/index'

  get 'students/new'

  get 'students/show'

  get 'students/edit'

  get 'authors/index'

  get 'authors/new'

  get 'authors/show'

  get 'authors/edit'

  get 'persons/index'

  get 'persons/new'

  get 'persons/show'

  get 'persons/edit'
  resources :persons
  resources :students
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
