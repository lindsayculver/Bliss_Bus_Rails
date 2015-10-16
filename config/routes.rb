Rails.application.routes.draw do
  root :to => 'buses#index'
  
 resources :buses do
   resources :posts
 end
end
