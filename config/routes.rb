Weblearn::Application.routes.draw do
   
    
  
  get "users/index"
  # get "user_vendors/show"
  # get "vendors/new"
  # get "vendors/show"
  # get "user_surveys/new"
  # get "user_surveys/show"
  # get "surveys/new"
  # get "surveys/show"
  # get "user_institutes/new"
  # get "user_institutes/show"
  # get "institutes/new"
  # get "institutes/show"
  
  root to: 'users#home'

  resources :access do
    member do
      post 'attempt_login'
    end
  end

  resources :user_contacts do
    member do
      post 'create'
    end
  end

  get "admin_users/index"
  get "admin_users/delete"
  get "admin_users/edit"
  get "admin_users/list"
  get "admin_users/new"
  get "admin_users/logout"
  get "logout/index"
  get "contacts/edit"
  get "contacts/delete", via: :all
  get "contacts/show"
  get "contacts/view"
  get "user_contacts/show"
  get "user_contacts/edit", via: :all
  get "user_contacts/update", via: :all
  #get "user_contacts/testnewcontact"
  get "contacts/jqmenu"
  
  get "contacts/get_message"

  get "users/format_yui"
  
  
  
  
  
  
  
  resources :contacts

  match '/about', to: 'users#about', via: 'get'
  match '/blogs', to: 'users#blogs', via: 'get'
  match '/list', to: 'contacts#list', via: 'get'
  match '/home', to: 'users#home', via: 'get'
  match '/news', to: 'users#industry_news', via: 'get'
  match '/services', to: 'users#services', via: 'get'
  match '/directory', to: 'users#directory', via: 'get'
  match '/access/login', to: 'access#login', :as => :login, via: ['get', 'post']  
      
  match '/user_contacts', to: 'user_contacts#new', via: 'get'
  match "/user_contacts/:id" => "user_contacts#update", via: 'post'

  match '/user_surveys', to: 'user_surveys#new', via: 'get'
  match "/user_surveys/:id" => "user_surveys#update", via: 'post'

  match '/user_vendors', to: 'user_vendors#new', via: 'get'
  match "/user_vendors/:id" => "user_vendors#update", via: 'post'


  match '/demostyle', to: 'users#styledemo', via: 'get'
  match '/democolumns3', to: 'users#columns3', via: 'get'
  match '/demofullwidth', to: 'users#fullwidth', via: 'get'
  match '/demogallery', to: 'users#gallery', via: 'get'
  match '/demoportfolio', to: 'users#portfolio', via: 'get'




  # get "users/style-demo"
  # get "users/3-columns"
  # get "users/full-width"
  # get "users/gallery"
  # get "users/portfolio"










  
  
  #match ':controller(/:action(/:id(.:format)))'
  
  
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
