BackboneOnRailsTodo::Application.routes.draw do
  root :to => "todo_lists#index"

  # match ':controller(/:action(/:id))(.:format)'
end
