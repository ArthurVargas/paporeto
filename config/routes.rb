Paporeto::Application.routes.draw do
  devise_for :users
  resources :categories
  resources :users
  resources :articles, path: 'artigos' , path_names: {new: 'novo', edit: 'editar'}
  root 'articles#index'
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
