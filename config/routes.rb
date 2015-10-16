Rails.application.routes.draw do
 resources :buses do
   resources :posts
 end
end
