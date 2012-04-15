BackboneOnRailsTodo::Application.routes.draw do
  get "todos/index"

  get "todos/new"

  get "todos/create"

  root :to => "todo_list#index"

  match 'todolist', :controller => "todo_list", :action => "index"
  resources :todos

  # match ':controller(/:action(/:id))(.:format)'
end
