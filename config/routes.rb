Rails.application.routes.draw do

  root to: 'decisions#new'

  resources :decisions, only: [:index, :new, :create, :destroy, :edit] do
    resources :criteria, only: [:index, :new, :create, :destroy]
      resources :answers, only: [:index, :new, :create, :update, :destroy]

      # get '/decisions/:decision_id/answers(.:format)' => 'answers#index', as: :decision_answers
      # post '/decisions/:decision_id/answers(.:format)' => 'answers#create'
      # get '/decisions/:decision_id/answers/new(.:format)' => 'answers#new', as: :new_decision_answer
      # get '/decisions/:decision_id/answers/:id/edit(.:format)' => 'answers#edit', as: :edit_decision_answer
      # get '/decisions/:decision_id/answers/:id(.:format)' => 'answers#show', as: :decision_answer
      # patch '/decisions/:decision_id/answers/:id(.:format)' => 'answers#update', as: :answer_update
      # put '/decisions/:decision_id/answers/:id(.:format)' => 'answers#update'
      # delete '/decisions/:decision_id/answers/:id(.:format)' => 'answers#destroy'

  end





  get 'decisions/home' => 'decisions#home', as: :home

  resource :session, only: [:new, :create, :destroy]

  get 'users' => 'users#index', as: :users
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  put 'users/:id' => 'users#update'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'


  get 'criteriaforanswer' => 'criteriaforanswer#index'

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