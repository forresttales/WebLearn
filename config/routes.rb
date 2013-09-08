Weblearn::Application.routes.draw do
   
    
  root to: 'users#home'

  resources :contacts

  match '/about', to: 'users#about', via: 'get'
  match '/blogs', to: 'users#blogs', via: 'get'
  match '/list', to: 'contacts#list', via: 'get'
  match '/home', to: 'users#home', via: 'get'
  match '/news', to: 'users#industry_news', via: 'get'
  match '/services', to: 'users#services', via: 'get'
  
  
  #match ':controller(/:action(/:id(.:format)))'
  
  # resources :contacts do
    # create do
      # post 'contact'
    # end
  # end
  
  
  # get "users/home"
  # get "users/industry_news"
  # get "users/blogs"
  # get "users/about"
  # get "users/services"
  # get "users/contact"
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
