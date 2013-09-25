Weblearn::Application.routes.draw do
   
    
  
  get "edmatchs/index"
  get "edmatchs/new"
  get "edmatchs/show"
  get "edmatchs/update"
  get "edmatch/index"
  get "edmatch/show"
  get "edmatch/update"
  get "access_publisher/login"
  get "access_publisher/show"
  get "access_publisher/update"
  get "access_institute/login"
  get "access_institute/show"
  get "access_institute/update"
  get "publishers/index"
  get "publishers/new"
  get "publishers/show"
  get "publishers/update"
  get "user_publishers/index"
  get "user_publishers/new"
  get "user_publishers/show"
  get "user_publishers/update"
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
# 
  # resources :access_institute do
    # member do
      # post 'attempt_login'
    # end
  # end

  # resources :user_contacts do
    # member do
      # post 'create'
    # end
  # end

  resources :contacts do
    member do
      post 'create'
    end
  end


  resources :user_institutes do
    member do
      post 'create'
    end
  end
  
  resources :user_publishers do
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
  
  
  # get "contacts/edit"
  # get "contacts/delete", via: :all
  # get "contacts/show"
  # get "contacts/view"
  
  get "admin_contacts/edit"
  get "admin_contacts/delete", via: :all
  get "admin_contacts/show"
  get "admin_contacts/view"
  
  # get "user_contacts/show"
  # get "user_contacts/edit", via: :all
  # get "user_contacts/update", via: :all
  
  get "contacts/show"
  get "contacts/edit", via: :all
  get "contacts/update", via: :all
  
  
  
  #get "user_contacts/testnewcontact"
  
  
  # get "contacts/jqmenu"
  # get "contacts/get_message"

  get "admin_contacts/jqmenu"
  get "admin_contacts/get_message"

  get "users/format_yui"
  

  # resources :contacts
  resources :admin_contacts


  match '/about', to: 'users#about', via: 'get'
  match '/blogs', to: 'users#blogs', via: 'get'
  match '/list', to: 'admin_contacts#list', via: 'get'
  match '/home', to: 'users#home', via: 'get'
  match '/news', to: 'users#news', via: 'get'
  match '/services', to: 'users#services', via: 'get'
  match '/directory', to: 'users#directory', via: 'get'

  
  match '/access/login', to: 'access#login', :as => :login, via: ['get', 'post']  

      
  # match '/user_contacts', to: 'user_contacts#new', via: 'get'
  # match "/user_contacts/:id" => "user_contacts#update", via: 'post'
  match '/contacts', to: 'contacts#new', via: 'get'
  match "/contacts/:id" => "contacts#update", via: 'post'


  match '/user_publishers', to: 'user_publishers#index', via: 'get'
  match "/user_publishers/:id" => "user_publishers#update", via: 'post'
  match '/user_publishers_new', to: 'user_publishers#new', via: 'get'

  match '/user_institutes', to: 'user_institutes#index', via: 'get'
  match "/user_institutes/:id" => "user_institutes#update", via: 'post'
  match '/user_institutes_new', to: 'user_institutes#new', via: 'get'
  #match '/user_institutes_create', to: 'user_institutes#create_login', via: 'get'

  match '/access_publisher/login', to: 'access_publisher#login', via: ['get', 'post']  
  match '/access_publisher/attempt_login_publisher', to: 'access_publisher#attempt_login_publisher', :as => 'attempt_login_publisher', via: ['post']


  match '/access_institute/login', to: 'access_institute#login', via: ['get', 'post']  
  match '/access_institute/attempt_login_institute', to: 'access_institute#attempt_login_institute', :as => 'attempt_login_institute', via: ['post']
  
  #match '/user_institutes_attempt_login', to: 'user_institutes#attempt_login', via: ['get', 'post']

  # get 'access_institute/attempt_login', via: ['post']
  # match '/tasks/:id/finish', :to => 'tasks#finish', :as => 'finish_task'


  match '/demostyle', to: 'users#styledemo', via: 'get'
  match '/democolumns3', to: 'users#columns3', via: 'get'
  match '/demofullwidth', to: 'users#fullwidth', via: 'get'
  match '/demogallery', to: 'users#gallery', via: 'get'
  match '/demoportfolio', to: 'users#portfolio', via: 'get'

  match '/match', to: 'users#match', via: 'get'


  match '/home_1', to: 'users#home_1', via: 'get'
  match '/about_1', to: 'users#about_1', via: 'get'
  match '/blogs_1', to: 'users#blogs_1', via: 'get'
  match '/directory_1', to: 'users#directory_1', via: 'get'
  match '/news_1', to: 'users#news_1', via: 'get'
  match '/services_1', to: 'users#services_1', via: 'get'


  match '/zDZFcDGpL4U', to: 'users#zDZFcDGpL4U', via: 'get'
  match '/XsNlrgN7mCo', to: 'users#XsNlrgN7mCo', via: 'get'

  # get "users/zDZFcDGpL4U"
  # get "users/XsNlrgN7mCo"





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
