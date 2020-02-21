Rails.application.routes.draw do
  devise_for :users
  root  'tweets#index'
  resources :tweets                     #tweets_controllerに対してのresourcesメソッド
  resources :tweets do
  resources :comments, only: [:create]
  end
  
  get '/work' => 'tweets#work'
  get '/sleep' => 'tweets#sleep'
  get '/goodbye' => 'tweets#goodbye'

  
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
#  get 'tweets' => 'tweets#index'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  get 'tweets/new'  =>  'tweets#new'
#  post  'tweets'      =>  'tweets#create'
#   delete  'tweets/:id'  => 'tweets#destroy'
#      patch   'tweets/:id'  => 'tweets#update'
#   get   'tweets/:id/edit'  => 'tweets#edit'
#   get   'users/:id'   =>  'users#show'        #ツイート詳細画面
#   get 'tweets/:id' => 'tweets#show'       #ツイート詳細画面
#Mypageへのルーティング
end
