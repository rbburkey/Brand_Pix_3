Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :designs
  resources :companies
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'static#home'
  get 'home' => 'static#home'

# devise routes
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  get    '/users/sign_in'  => 'devise/sessions#new'
  get '/users/password/new' => 'devise/passwords#new'

end



  get 'companies/:id' => 'companies#show'
  get 'companies/:id' => 'designs#create'
  get 'companies/new' => 'companies#create'
  get 'companies/:id/edit' => 'companies#edit'
  get 'companies' => 'companies#index'


  get 'designs/:id' => 'designs#show'
  get 'designs' => 'designs#index'
  get 'designs/new' => 'designs#create'


  get 'reviews' => 'reviews#index'
  get 'reviews/new' => 'reviews#create'
  get 'reviews/:id' => 'reviews#show'
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
