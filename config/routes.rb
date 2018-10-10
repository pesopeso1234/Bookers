Rails.application.routes.draw do
  # resources :books
  root to: 'books#top'
  get '/books/top' => 'books#top'
  patch '/books/:id' => 'books#update', as: 'update_book'
  delete '/books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
