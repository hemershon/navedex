Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
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
  get '/navers/index', to: 'navers#index'
  get '/naver/:id/show', to: 'navers#show'
  get '/naver/store', to: 'navers#store'
  patch '/naver/update', to: 'navers#update'
  delete '/delete/:id', to: 'navers#delete'
  # resources :projects
end
