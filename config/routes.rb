Rails.application.routes.draw do
    resources :lists
    root 'lists#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    #   lists   GET    /lists(.:format)          lists#index
    #           POST   /lists(.:format)          lists#create
    # new_list  GET    /lists/new(.:format)      lists#new
    # edit_list GET    /lists/:id/edit(.:format) lists#edit
    #     list  GET    /lists/:id(.:format)      lists#show
    #           PATCH  /lists/:id(.:format)      lists#update
    #           PUT    /lists/:id(.:format)      lists#update
    #           DELETE /lists/:id(.:format)      lists#destroy
    #    todos  GET    /todos(.:format)          todos#index
    #           POST   /todos(.:format)          todos#create
    # new_todo  GET    /todos/new(.:format)      todos#new
    # edit_todo GET    /todos/:id/edit(.:format) todos#edit
    #     todo  GET    /todos/:id(.:format)      todos#show
    #           PATCH  /todos/:id(.:format)      todos#update
    #           PUT    /todos/:id(.:format)      todos#update
    #           DELETE /todos/:id(.:format)      todos#destroy
    #    users  GET    /users(.:format)          users#index
    #           POST   /users(.:format)          users#create
    # new_user  GET    /users/new(.:format)      users#new
    # edit_user GET    /users/:id/edit(.:format) users#edit
    #     user  GET    /users/:id(.:format)      users#show
    #           PATCH  /users/:id(.:format)      users#update
    #           PUT    /users/:id(.:format)      users#update
    #           DELETE /users/:id(.:format)      users#destroy

    resources :todos
    resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
