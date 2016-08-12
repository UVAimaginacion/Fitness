Rails.application.routes.draw do

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

  #root "welcome#rutinas"
  #root 'welcome#foro'
  root 'welcome#navegador'
end
