Rails.application.routes.draw do
  resources :filhotes
  resources :ninhadas
  resources :padreadores
  resources :matrizes
  resources :caracteristicas
  resources :racas

  devise_for :usuarios do
    get '/usuarios/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # defaults to dashboard
  root :to => redirect('/singleview')

  # view routes
  get '/singleview' => 'singleview#index'

  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

end
