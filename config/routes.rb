BackboneOnRailsTodo::Application.routes.draw do
  root :to => "todo_list#index"

  # match ':controller(/:action(/:id))(.:format)'
end
