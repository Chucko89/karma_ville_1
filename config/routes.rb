Karmaville::Application.routes.draw do
  resources :users, :only => [:index]

  root :to => 'users#index'
  resources :users, only:[:show]
end

# we need to add a users#show route that maps to users/:page 
