Rails.application.routes.draw do
  resources :categories do
    resources :items, shallow: true
  end
  
  #...go
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "categories#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
