Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :accions, :station
  get 'stations/:lat/:long/:radio', to: 'station#consult'
  get 'routes/:id', to: 'route#consult'
  get 'buses/:id', to: 'route#consult_buses' #Consultar buses por ruta
  get 'users/:id', to: 'users#show'
  get 'requests/:id', to: 'request#show' 
  post 'routes', to: 'route#create'
  post 'add_station_to_routes', to: 'route#add_station'
  post 'buses', to: 'bus#create'
  post 'add_route_to_buses', to: 'bus#add_route'
  post 'requests', to: 'request#create' 
  post 'users', to: 'users#create'
  post 'rols', to: 'rol#create'
end