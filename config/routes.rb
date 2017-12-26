Rails.application.routes.draw do
  resources :blogs
  resources :posts
    root 'posts#index'

    resources :posts # 아래있는거 주석처리해도 작동함
    # # CREATE(/Posts -> 포스트를 만드는거)
    # get '/posts/new' => 'posts#new'
    #
    # get '/posts/create' => 'posts#create'
    #
    # # READ (모두 읽는거, 1개 읽는거)
    # get '/posts' => 'posts#index'
    # # get 'posts/show/:id' => 'posts#show'
    # get '/posts/:id' => 'posts#show'
    #
    # # UPDATE (edit -> update)
    # get '/posts/:id/edit' => 'posts#edit'
    #
    # put '/posts/:id' => 'posts#update'
    #
    # # DELETE
    # delete 'posts/:id' => 'posts#destroy'







end
