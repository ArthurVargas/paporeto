Paporeto::Application.routes.draw do
  
  resources :articles, only: [:index, :show]
  
  devise_for :users
  
  namespace :admin do
    resources :categories
    resources :users
    resources :articles, path: 'artigos' , path_names: {new: 'novo', edit: 'editar'}
  end
  
  root 'articles#index'
  
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
