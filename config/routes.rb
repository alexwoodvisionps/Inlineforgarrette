Inlineforgarrett::Application.routes.draw do
  get "login/signin"
  
  post "login/signinpost"

  post "smsprocessor/receive"

  get "siteadminpanel/new"
  
  get "siteadminpanel/login"
  
  post "siteadminpanel/loginpost"

  get "order/new"
  
  get "deliverer/new"

  get "user/signup"
  
  post "user/signuppost"
  
  post "order/newpost"
    
  post "deliverer/newpost"
  
  get "order/edit"
    
  get "deliverer/edit"
  
  get "user/edit"
    
  post "user/editpost"
    
  post "order/editpost"
      
  post "deliverer/editpost"

  get "order/list"
  
  get "deliverer/list"

  get "user/list"

  get "order/delete"
  
  get "deliverer/delete"

  get "user/delete"
  
  post "user/deletepost"
  
  post "order/deletepost"
    
  post "deliverer/deletepost"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
