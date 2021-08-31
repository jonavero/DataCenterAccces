Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#Rutas paera manipular las solicitudes
  #

get '/inicio' => 'solicitudes#index'
get '/solicitud/:id' => 'solicitudes#show',as: :verSolicitud
get '/new/solicitud'  => 'solicitudes#new'
post 'new/solicitud' =>'solicitudes#create'
get '/solicitud/:id' => 'solicitudes#show',as: :showSolicitud
get '/solicitud/admin/:id' => 'solicitudes#showAdmin',as: :showSolicitudAdmin
patch '/solicitud/admin/:id' =>'solicitudes#updateEstatus', as: :updateEstatus


#Rutas para manipular usuario
  # **************************
get '/users' => 'usuarios#index'
get '/new/usuario' => 'usuarios#new'
get '/usuario/:id/ver' => 'usuarios#ver', as: :showUser
post '/new/usuario' => 'usuarios#create'
get 'usuario/:id/edit' => 'usuarios#edit', as: :edit
patch 'usuario/:id' => 'usuarios#update', as: :update
get 'usuario/:id/show' => 'usuarios#editar', as: :editar_ver

  #Rutas para manipular session
  # ***************************
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

#Rutas para manipularr Acceso Rapido
   get '/accesos' => 'accesos#index'
  get '/new/acceso' => 'accesos#new'
  post  '/new/acceso' =>'accesos#create'
get '/acceso/:id' => 'accesos#show', as: :showAcceso
  get '/accesos/user' => 'accesos#indexUser', as: :accesosIndexUser
  get '/acceso/user/:id' => 'accesos#showUser',as: :showAccesoUser



#Rutas para las solicitudes de los usuarios

get '/user/inicio' => 'solicitudes#indexUser',as: :userInicio



root 'sessions#new'

end
