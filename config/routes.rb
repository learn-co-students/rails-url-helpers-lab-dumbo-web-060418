Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  get '/student/:id/activate', to: 'students#activate_student', as: 'activate_student'
end
