AprendoSolo::Application.routes.draw do 
  match "examination/all", :to => "examination#all", :as => :topic_indexx

  get "examination/new"

  get "examination/show"

  get "examination/calification"

  resources :users, :shallow => true do 
   
       get "users/:id", :to => "users#show", :as => :user
       get "users/:id/edit"         

   end 
  resources :courses, :shallow => true do
    resources :video_loaders  
      get "video_loaders/:id", :to => "video_loaders#show", :as => :video_loader   
      

  end
  
  resources :topics do
    resources :quests
  end
  resources :quests do
    resources :answers
  end
   match "topic/:id/quest_user", :to => "quests#user_quest", :as => :quests
   match "users/:id/videos",:to =>"users#videos", :as => :users_videos
   match "/auth/:provider/callback" => "sessions#create"
   match "/signout" => "sessions#destroy", :as => :signout
   match "/auth/:provider/callback" => "sessions#create"
   match "home/members",:to => "home#members", :as => :members
   match "video_loaders/", :to => "video_loaders#index", :as => :video_loaders
   get "home/index"

   get "home/courses"

   get "home/terms"

   get "home/tutorial"

   get "home/about_us"
  
   get "/courses/:id/video", :to => "courses#video_loaders", :as => :video
   match '/courses/:id/new_video', :to => "courses#new_video", :as => :new_video_course
   
  
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
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
