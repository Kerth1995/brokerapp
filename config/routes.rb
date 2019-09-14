Rails.application.routes.draw do
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
<<<<<<< Updated upstream
  get 'login' => 'login#create', as: :create
  #get 'logout' => 'login#destroy', as: :logout
  #get 'login' => 'login#new'
=======
  get 'usuarios/index'


  
  get 'empleados/index'
  get 'documento_identidads/index'
>>>>>>> Stashed changes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
