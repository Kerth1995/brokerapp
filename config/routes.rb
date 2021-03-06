Rails.application.routes.draw do
  resources :privilegios
  resources :documentos
  resources :estudiantes
  resources :tutors
  resources :empleaditos
  resources :proyectos
  resources :ejemplos
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
  get 'rols/index'
  get 'empleado/index'
  get 'home/index'
  get 'login' => 'login#create', as: :create
  get 'usuarios/index'
  get 'empleados/index'
  get 'documento_identidads/index'
  get 'privilegio_empleados/index'
  get 'acti' =>'tareas#index' , as: :acti
  

end
