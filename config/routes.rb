BackboneOnRailsTodo::Application.routes.draw do
  root :to => "todo_list#index"

  match 'todolist', :controller => "todo_list", :action => "index"
  resources :todos

  # match ':controller(/:action(/:id))(.:format)'
end
