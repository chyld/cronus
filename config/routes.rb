Cronus::Application.routes.draw do
  resources :tags
  resources :notes do
    get 'image'
  end
  root :to => "notes#index"
end
