Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :accions, :buses, :station
  get 'stations/:lat/:long/:radio', to: 'station#consult'
  get 'routes/:id', to: 'route#consult'
  post 'routes', to: 'route#create'
  post 'add_station_to_routes', to: 'route#add_station'
end
