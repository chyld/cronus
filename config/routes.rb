Cronus::Application.routes.draw do
  resources :slideshow
  resources :tags
  resources :notes do
    get 'image'
  end
  root :to => "notes#index"
end
