Rails.application.routes.draw do
  devise_for :users, #defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    registratrions: :registrations,
    sessions: :sessions
  }
  resources :navers
  resources :projects
end
