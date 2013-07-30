Paporeto::Application.routes.draw do
  resources :categories

  resources :articles, path: 'artigos' , path_names: {new: 'novo', edit: 'editar'}
  root 'articles#index'

end
