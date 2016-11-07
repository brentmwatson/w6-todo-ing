Rails.application.routes.draw do

    resources :users
    resources :lists do
        resources :todos
    end
    root 'lists#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
#     users GET    /users(.:format)                         users#index
#           POST   /users(.:format)                         users#create
#  new_user GET    /users/new(.:format)                     users#new
# edit_user GET    /users/:id/edit(.:format)                users#edit
#      user GET    /users/:id(.:format)                     users#show
#           PATCH  /users/:id(.:format)                     users#update
#           PUT    /users/:id(.:format)                     users#update
#           DELETE /users/:id(.:format)                     users#destroy
# list_todos GET    /lists/:list_id/todos(.:format)          todos#index
#           POST   /lists/:list_id/todos(.:format)          todos#create
# new_list_todo GET    /lists/:list_id/todos/new(.:format)      todos#new
# edit_list_todo GET    /lists/:list_id/todos/:id/edit(.:format) todos#edit
# list_todo GET    /lists/:list_id/todos/:id(.:format)      todos#show
#           PATCH  /lists/:list_id/todos/:id(.:format)      todos#update
#           PUT    /lists/:list_id/todos/:id(.:format)      todos#update
#           DELETE /lists/:list_id/todos/:id(.:format)      todos#destroy
#     lists GET    /lists(.:format)                         lists#index
#           POST   /lists(.:format)                         lists#create
#  new_list GET    /lists/new(.:format)                     lists#new
# edit_list GET    /lists/:id/edit(.:format)                lists#edit
#      list GET    /lists/:id(.:format)                     lists#show
#           PATCH  /lists/:id(.:format)                     lists#update
#           PUT    /lists/:id(.:format)                     lists#update
#           DELETE /lists/:id(.:format)                     lists#destroy
#      root GET    /                                        lists#index
#     login GET    /login(.:format)                         sessions#new
#           POST   /login(.:format)                         sessions#create
#    logout GET    /logout(.:format)                        sessions#destroy


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
