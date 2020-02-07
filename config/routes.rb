Rails.application.routes.draw do
  resources :books
  # get    '/books',          to: 'books#index'
  # get    '/books/:id',      to: 'books#show', as: 'show'
  # get    '/books/new',      to: 'book#new', as: 'new'
  # get    '/books/:id/edit', to: 'book#edit', as: 'edit'
  # post   '/books',          to: 'books#create'
  # patch  '/books/:id',      to: 'books#update'
  # delete '/book/:id',      to: 'books#destroy'
  # post   '/',          to: 'books#create'
  root :to => 'books#index'
  # match '/books',  to: 'books#index',  via: 'get'
  # get    '/:id/show',  to: 'books#show'
  # post   '/',          to: 'books#create'
  # get    '/new',       to: 'books#new'
  # get    '/:id/edit',  to: 'books#edit'
  # patch  '/:id',       to: 'books#update'
  # put    '/:id',       to: 'books#update'
  # delete '/',          to: 'books#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
