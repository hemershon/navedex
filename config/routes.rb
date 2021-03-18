Rails.application.routes.draw do
  root to: 'sessions#new'
  devise_for :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'sessions',
    registratrions: 'registrations'
  }
  resource :navers
  resource :projects
end
