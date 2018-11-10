Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :accions, :station
 #Consultar buses por ruta
  get 'buses/:id', to: 'bus#show'
  post 'buses', to: 'bus#create'
  
  
  get 'buses/:id', to: 'route#consult_buses'
  get 'routes/:id', to: 'route#consult'
  post 'routes', to: 'route#create'
  get 'routes/:id', to: 'route#show'
  
    
  get 'stations/:lat/:long/:radio', to: 'station#consult'
  post 'stations', to: 'station#create' 
  get 'stations/:id', to: 'station#show'  
    
  post 'requests', to: 'request#create'
  get 'requests/:id', to: 'request#show' 
  

  post 'timetables', to: 'timetable#create'
  get 'timetables/:id', to: 'timetable#show' 
  
  post 'servicedays', to: 'serviceday#create'
  get 'servicedays/:id', to: 'serviceday#show' 
  

  post 'accions', to: 'accion#create'
  get 'accions/:id', to: 'accion#show'
  
  post 'logs', to: 'log#create'
  get 'logs/:id', to: 'log#show'
  
  
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show'
  
    
  post 'rols', to: 'rol#create'
  get 'rols/:id', to: 'rol#show'

  post 'menus', to: 'menu#create'
  get 'menus/:id', to: 'menu#show'
  
  
  post 'add_station_to_routes', to: 'route#add_station'
  post 'add_route_to_buses', to: 'bus#add_route'


end