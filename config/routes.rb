MenumaticTest::Application.routes.draw do
  match 'home' => 'home#index'
  match 'about' => 'home#index'
  match 'about/history' => 'home#index'
  match 'about/the_team' => 'home#index'
  match 'about/our_vision' => 'home#index'
  match 'something_else' => 'home#index'
  match 'contact_us' => 'home#index'
  match 'store' => 'home#index'
  match 'store/on_special' => 'home#index'
  match 'store/coming_soon' => 'home#index'
  match 'store/categories' => 'home#index'
  match 'store/categories/shirts' => 'home#index'
  match 'store/categories/pants' => 'home#index'
  match 'store/categories/hats' => 'home#index'
  match 'store/categories/accessories' => 'home#index'
  match 'store/categories/sporks' => 'home#index'

  sitemap_for :application

  root :to => "home#index"
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
