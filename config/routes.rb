Rails.application.routes.draw do
  resources :rols
  resources :rol_usuarios
  resources :tareas
  resources :privilegio_empleados
  resources :documento_identidads
  resources :empleados
  resources :emppleados
  resources :usuarios
  resources :login
  
  root 'login#index'
  get 'estadistica/index'
  get 'reporte/index'
  get 'cronograma/index'
  get 'incidencia/index'
  get 'tarea/index'
  get 'proyecto/index'
  get 'rol/index'
  get 'empleado/index'
  #get 'home/index'
  get 'home/index'
  get 'login' => 'login#create', as: :create
  get 'usuarios/index'
  get 'empleados/index'
  get 'documento_identidads/index'
  get 'privilegio_empleados/index'


end
