Rails.application.routes.draw do


  devise_for :users
  get     '/rutinas',         to: 'rutina#index'
  post    '/rutinas',         to: 'rutina#create'
  get     '/rutinas/:id',     to: 'rutina#show'
  put     '/rutinas/:id',     to: 'rutina#update'
  delete  '/rutinas/:id',     to: 'rutina#destroy'

  get     '/publicaciones',         to: 'publicacion#index'
  post    '/publicaciones',         to: 'publicacion#create'
  get     '/publicaciones/:id',     to: 'publicacion#show'
  put     '/publicaciones/:id',     to: 'publicacion#update'
  delete  '/publicaciones/:id',     to: 'publicacion#destroy'

  get     '/comentarios/:id',       to: 'comment#show'
  post    '/comentarios',           to: 'comment#create'

  get     '/rutinaespecifica',   to: 'welcome#rutinaespecifica'
  get     '/rutina',             to: 'welcome#rutinas'
  get     '/foro',                to: 'welcome#foro'
  get     '/about',               to: 'welcome#about'

  #root "welcome#rutinas"
  #root 'welcome#foro'

  root 'pages#home'#este es el que coloco sebastian
  #root 'welcome#navegador'#este es el que coloco sebastian
  #root 'welcome#home'
  resources :welcome


  root 'pages#home'
  get 'welcome/navegador'

  resources :pages
  get 'home' => 'pages#home'

  #root 'pages#home'

  resources :pages
  #root 'welcome#foro'
  #root 'welcome#navegador'
  #root  'welcome#addrutina'
  #root  'welcome#adminforo'
  ##root 'welcome#about'


  resources :recipes
  #root 'recipes#index'

  resources :tips
  #root 'tips#index'

  #root 'events#index'
  resources :events
  #get 'events/show'
  #get 'events/new'
  resources :registros

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
