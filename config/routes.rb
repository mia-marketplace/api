Rails.application.routes.draw do
  
  devise_for :festivals,
  path: 'festival/',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }

  devise_for :creatives,
  path: 'creative/',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }








  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
