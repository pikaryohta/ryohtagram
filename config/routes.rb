Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  # ここにusersコントローラーのshowアクションのルーティングを追加する
  # get '/users/:id', to: 'users#show', as: 'user'
  #get 'users/', to: 'users#show', as: 'user_show'
  # get 'users/', to: 'users#show', as: 'user'
   resources :users, only: %i(show show)
end
