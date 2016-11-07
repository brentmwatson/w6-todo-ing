Rails.application.routes.draw do

    resources :users
    resources :lists do
        resources :todos
    end
    root 'lists#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
