Paporeto::Application.routes.draw do
  devise_for :users
  
  namespace :admin do
    resources :categories
    resources :users
    resources :articles, path: 'artigos' , path_names: {new: 'novo', edit: 'editar'}
  end
  
  root 'admin/articles#index'
  
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
