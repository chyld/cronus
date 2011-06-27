Cronus::Application.routes.draw do
  resources :tags
  resources :notes
  root :to => "notes#index"
end
