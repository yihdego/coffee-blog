Rails.application.routes.draw do
  get 'upvotes/new'

  get 'upvotes/create'

  get 'upvotes/edit'

  get 'upvotes/update'

  get 'upvotes/destroy'

  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/show'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/show'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/destroy'

  resources :posts
  resources :comments
  resources :upvotes
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
