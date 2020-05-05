Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'posts#index'

  # usersコントローラーのshowアクションのルーティングを追加
   get '/users/:id', to: 'users#show', as: 'user'

  #get 'users/', to: 'users#show', as: 'user_show'
  # get 'users/', to: 'users#show', as: 'user'
  # resources :users, only: %i(show show)

  # 投稿機能で使うルーティングの追加
  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)
  end
end