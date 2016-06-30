Rails.application.routes.draw do
  root 'pages#home'
  
  devise_for :users, controllers: { registrations: "users/registrations" }
  
  get 'profile' => 'users#show'
  post 'create_phone' => 'users#create_phone'
  delete 'delete_phone' => 'users#destroy_phone'
  
  get 'security' => 'securities#index'
  
  namespace :securities do
    get 'card' => 'cards#show'
    post 'create_coordinate' => 'coordinates#create'
    
    get 'questions' => 'questions#index'
    
    get 'new_answers' => 'user_ques#new'
    post 'answers' => 'user_ques#create'
    get 'edit_answers' => 'user_ques#edit'
  end
  
  resources :products
  get 'product_allocation' => 'products#allocation'
  post 'product_allocate' => 'products#allocate'
  
  resources :roles, except: [:show]
  get 'role_allocation' => 'roles#allocation'
  post 'role_allocate' => 'roles#allocate'
  #put 'role_allocate' => 'roles#allocate'
  
  resources :operations
  get 'operation_allocation' => 'operations#allocation'
  post 'operation_allocate' => 'operations#allocate'
  
  resources :approval_levels
  
  get 'new_transfer' => 'operations#transfer'
  post 'transfering' => 'operations#transfering'
  
  get 'reports' => 'reports#index'

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
