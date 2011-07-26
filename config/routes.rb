Cronus::Application.routes.draw do
  resources :slideshow
  resources :tags
  resources :notes do
    get 'image'
    delete 'tag'
  end

  match "/backup/" => "backup#all"

  root :to => "notes#index"
end
