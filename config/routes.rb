Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'pages#home'

  # usersコントローラーのshowアクションのルーティングを追加
   get '/users/:id', to: 'users#show', as: 'user'



  #get 'users/', to: 'users#show', as: 'user_show'
  # get 'users/', to: 'users#show', as: 'user'
  # resources :users, only: %i(show show)
end
