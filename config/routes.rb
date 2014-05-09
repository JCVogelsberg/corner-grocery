StoreWebsite::Application.routes.draw do
  root :to => 'application#index'
  resources :products, :except => [:new, :edit]

end
